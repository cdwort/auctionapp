class UserController < ApplicationController
  # attr_accessible :email, :password, :password_confirmation, :remember_me

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html {redirect_to @user, notice : 'Your account was successfully created'}
      else 
        format.html {render action : "new"}
      end
    end
  end

  
  def create
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html {redirect_to @user, notice : 'Your account was successfully modified'}
      else 
        format.html {render action : "edit"}
      end
    end
  end

  private

  def user_params
    params[:user].permit(:email, :password, :password_confirmation, :remember_me )
  end
end
