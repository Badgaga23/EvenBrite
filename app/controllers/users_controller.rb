class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
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
end
