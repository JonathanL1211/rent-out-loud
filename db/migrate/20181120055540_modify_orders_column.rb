class ModifyOrdersColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :end_date, :date
  end
end
