
class EventsController < ApplicationController
  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]

  def index
    if session["user_id"] != nil
      @user_zip = User.find(session["user_id"]).user_zip
    end

    if params["search_zip"]

      search_zip = params["search_zip"]
      search_category = params["search_category"]
      search_range = params["search_range"]

      zip_code_array = []
      response = HTTParty.get("https://api.promaptools.com/service/us/zips-inside-radius/get/?radius=#{search_range}&zip=#{search_zip}&showcity=true&showstate=true&key=" + ENV["PMT_API_KEY"])
      if params["search_category"] == "All"
        zip_codes = response["output"].each{|index| zip_code_array.push(index["zip"])}
        zip_list = zip_code_array.join(" OR event_zip = ")
        @events = Event.where("event_zip = #{zip_list}")
      else
        zip_codes = response["output"].each{|index| zip_code_array.push("event_zip = #{index["zip"]}" + " AND event_category = '#{search_category}'")}
        zip_list = zip_code_array.join(" OR ")
        # binding.pry
        @events = Event.where(zip_list)
      end
    else
      @events = Event.all
    end
  end

  def new
    @id = current_user.id

    @user = User.find(@id)
    @event =  Event.new
  end



  def create
    @id = current_user.id

    @user = User.find(@id)
    @event = Event.new(event_params)

    if @event.save
      NewEventMailer.notify_event(@user, @event).deliver_now
      flash[:notice] = "Your Event has been created!"
      # redirect_to event_path(@id, @event)
      redirect_to event_path(@event)

    else
      flash[:alert]= "ooops!"
      render :new
    end
  end

  def add
    # @user_to_add = current_user.id
    @user = User.find(session[:user_id])
    # event = Event.where(employee_name: params[:employee].fetch("employee")).first
    @event = Event.find(params[:id])
    NewEventSignupMailer.notify_signup(@user, @event).deliver_now
    @user.events << @event
    redirect_to event_path(@event)

  end


  def edit
    @event = Event.find(params[:id])
    render :edit
  end

  def show
    @id = current_user.id

    @user = User.find(@id)
    @event = Event.find(params[:id])
    @signedup_user_ids = []
    @signedup_user_names = []
    sql = "select * from events_users where event_id = #{@event.id};"
    @signedup = ActiveRecord::Base.connection.execute(sql)
    @signedup.each do |person| @signedup_user_ids.push(person.values[0]) end
      @signedup_user_ids.each do |id| @signedup_user_names.push(User.find(id).user_name_first) end



        #not allowing the user to join multiple times
        sql2 = "select * from events_users where user_id = #{@id} and event_id = #{@event.id};"
        @alreadyjoined= ActiveRecord::Base.connection.execute(sql2)

        # binding.pry
        render :show
      end



      def update
        @event = Event.find(params[:id])
        if @event.update(event_params)
          redirect_to event_path(@event.user)
        else
          render :edit
        end
      end
      def destroy
        @event = Event.find(params[:id])
        @event.destroy
        # redirect_to event_path(@event.user)
        redirect_to events_path
      end


      private

      def event_params
        params.require(:event).permit(:event_name, :event_date, :event_time, :event_address, :event_zip, :event_city, :event_state, :event_description, :event_age_min, :event_category, :event_min_seats, :event_max_seats, :user_id  )
      end



    end
