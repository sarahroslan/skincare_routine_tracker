class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
    
      redirect_to sign_in
      byebug
    else
      render 'new'
    end
    #add sessions if logged in
  end

  def edit
   user = User.update
  end

  def show
    @user = User.find(params[:id])
    #redirect to show page
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
