class AddFielsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :contact_number, :integer
    add_column :users, :profile_image, :string
  end
end
