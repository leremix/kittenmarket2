class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @orders = Order.where(params[:id])
  end

  def admin
    @user = User.find(params[:admin])
  end

  def create

  end
end
