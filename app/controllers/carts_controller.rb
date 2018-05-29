class CartsController < ApplicationController
  before_action :require_login
  before_action :require_cart, only: [:show]

  def addtocart
      if current_user.cart
         current_user.cart.items << Item.find(params[:id])
      else
      cart=Cart.new
      cart.user=current_user
      cart.items<<Item.find(params[:id])
      cart.save
      end
      flash[:success] = "Article ajouté à votre panier"
      redirect_to root_path
  end

  def show
     @cart=current_user.cart.items
  end

    def deleteitem
      current_user.cart.items.delete(Item.find(params[:id]))
      redirect_to showcart_path
    end

  def destroy
    current_user.cart.items.clear
    redirect_to showcart_path
  end

  private

  def require_login
    unless user_signed_in?
      flash[:danger] = "Vous devez vous connecter pour accéder à votre panier"
      redirect_to new_user_session_path
    end
  end

def require_cart
  unless current_user.cart.present?
    flash[:danger] ="Veuillez ajouter quelque choses au panier"
    redirect_to root_path
  end
  end



end
