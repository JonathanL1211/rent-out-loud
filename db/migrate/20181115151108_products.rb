class Products < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
        t.string :name
        t.string :description
        t.string :product_image
        t.decimal :price
        t.integer :rental_days
        t.date :meetup_date
        t.string :meetup_location
        t.boolean :availability_status
        t.timestamps
    end
  end
end
