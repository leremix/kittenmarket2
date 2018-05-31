class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def admin
    @user = User.find(params[:admin])
  end
end
