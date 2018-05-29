class OrdersController < ApplicationController

  before_action :require_login

  def createorder
    order=Order.new
    order.user=current_user
    order.items=current_user.cart.items

    order.total_price=0
    order.items.each do |value|
      order.total_price+=value.price.round(2)
    end

    order.save
    current_user.cart.items.clear
    redirect_to orders_path
  end

  def index
    @orders=current_user.orders
  end

  def destroy
    order=Order.find(params[:id])
    order.destroy
    redirect_to root_path
  end

  private

  def require_login
    unless user_signed_in?
      flash[:danger] = "Vous devez vous connecter pour accéder à vos commandes"
      redirect_to new_user_session_path
    end
  end
end
