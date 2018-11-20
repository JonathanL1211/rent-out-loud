class AddCostOfItemToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :individual_cost, :decimal
  end
end
