
class UsersController < ApplicationController


    def new
      @user = User.new
      render :new
    end

    def show
      @user = User.find(params[:id])
      render :show
    end

    def edit
      @user = User.find(params[:id])

      render :edit
    end

    def index
      @users = User.all
      render :index
    end

    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        # flash[:notice] = "You've successfully signed up!"
        # session[:user_id] = @user.id
        redirect_to users_path
      else
        flash[:alert] = "There was a problem editing this user."
        render :edit
      end
    end
#This remove stuff is new
    def remove
      @user = User.find(params[:id])
      event = Event.find(params[:flake].fetch("event_id"))

      @user.events.delete(event)
      redirect_to user_path

    end
#remove stuff above is new
    def create
      @user = User.new(user_params)
      if @user.save
        NewUserEmailMailer.notify_user(@user).deliver_now
        flash[:notice] = "You've successfully signed up!"
        session[:user_id] = @user.id
        redirect_to "/"
      else
        flash[:alert] = "There was a problem signing up."
        redirect_to '/signup'
      end
    end

    private

    def user_params
      params.require(:user).permit(:user_email, :user_name_last, :user_name_first, :user_zip,  :password, :password_confirmation)
    end
  end
