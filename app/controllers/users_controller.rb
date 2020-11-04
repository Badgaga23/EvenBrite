class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
<<<<<<< HEAD
  before_action :is_current_user?, only: [:show]

  def show
      @user = User.find(params[:id])
  end

  private
# tu ne peux pas aller sur le profil d'un autre utilisateur
  def is_current_user?
      @user = User.find(params[:id])
      unless  current_user == @user
        redirect_to user_path(current_user)
      end
  end
=======
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

>>>>>>> 2a19edc3d9c721bf5ac1fbd353b42616d01da3f5
end
