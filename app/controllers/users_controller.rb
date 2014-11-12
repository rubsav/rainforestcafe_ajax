class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to products_url, notice: "Signed up!"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
   @user = User.find(params[:id])
   @user.destroy
   session[:user_id] = nil
   redirect_to products_url
  end

 private
 def user_params
  params.require(:user).permit(:email, :password, :password_confirmation, :name)
end
end