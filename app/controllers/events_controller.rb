
class EventsController < ApplicationController
  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]
  def index

    @events = Event.all
    render :index
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
       flash[:notice] = "Your Event has been created!"
      redirect_to event_path(@id, @event)

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
      render :show
    end

  def show
    @event = Event.find(params[:id])
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
    redirect_to event_path(@event.user)
  end
  
  
private

def event_params
  params.require(:event).permit(:event_name, :event_date, :event_time, :event_address, :event_zip, :event_city, :event_state, :event_description, :event_age_min, :event_category, :event_min_seats, :event_max_seats, :user_id  )
end



end
