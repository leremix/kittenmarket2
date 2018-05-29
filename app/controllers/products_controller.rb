class ProductsController < ApplicationController
  def index
    @items = Item.all
  end

  def admin_view
    if current_user.admin?
    @items = Item.all
    @orders = Order.all
    else
    redirect_to root_path
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to @item
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

  def show
    @item=Item.find(params[:id])
  end

  private
    def item_params
      params.require(:item).permit(:title, :description, :price, :image_url)
    end
end
