class AddStatutToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :statut, :boolean, default:false
  end
end
