class UsersController < ApplicationController
  
  def new
    @user = User.new()
  end 
  
  def create
    @user = User.new(params)
    if @user.save
      redirect_to :login
    else
      render :login, alert: "User Failed to Create"
    end
  end 
  
  def welcome
  end 
end
