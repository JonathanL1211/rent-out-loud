class AddRentalDaysToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :rental_days, :integer
  end
end
