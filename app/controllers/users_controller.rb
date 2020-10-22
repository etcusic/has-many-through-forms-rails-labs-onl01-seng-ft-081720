class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  # def create
  #   new_user = 
  # end

end
