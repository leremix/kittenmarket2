class ProductsController < ApplicationController
  def index
    @items = Item.all
    @item1 = Item.find(1)
    @item2 = Item.find(2)
    @item3 = Item.find(3)
  end

  def admin_view
    if current_user.admin?
    @items = Item.all
    @item = Item.new
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
      redirect_to adminv_path
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    
    @item = Item.find(params[:id])
    if @item.update
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
      params.require(:item).permit(:title, :description, :price, :image_url, :id )
    end
end
