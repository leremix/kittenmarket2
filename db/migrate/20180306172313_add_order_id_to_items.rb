class AddOrderIdToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :order_id, :integer
  end
end
