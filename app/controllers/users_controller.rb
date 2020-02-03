
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

    def create
      @user = User.new(user_params)
      if @user.save
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
