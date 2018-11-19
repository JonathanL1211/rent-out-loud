class RemoveMeetupDateFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :meetup_date, :date
  end
end
