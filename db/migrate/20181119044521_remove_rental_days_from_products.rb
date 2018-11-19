class RemoveRentalDaysFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :rental_days, :integer
  end
end
