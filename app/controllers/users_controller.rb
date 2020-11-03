class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :is_current_user?, only: [show]
  def index
    @user = User.all
  end

  end

  def show
    @user = User.find(params[id])
  end



  private

  def set_user
    @user = User.find(params[id])
  end

  def is_current_user  
    @user = User.find(params[:id])
    unless current_user == @user
      flash[:danger] = "action impossible !"
      redirect_to "/"
    end

end
