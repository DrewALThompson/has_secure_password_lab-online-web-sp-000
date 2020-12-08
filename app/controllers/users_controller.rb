class UsersController < ApplicationController
  
  def new
    @user = User.new()
  end 
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :welcome
    else
      render :login, alert: "User Failed to Create"
    end
  end 
  
  def welcome
  end 
  
  private
  
  def user_params
    
  end 
end
