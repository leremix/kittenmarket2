class HomeController < ApplicationController
  def index
  	 @item1 = Item.find(1)
     @item2 = Item.find(2)
     @item3 = Item.find(3)
  end
end
