class ReviewsModification < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :product_id
    remove_column :reviews, :user_id
    add_reference :reviews, :order, foreign_key: true
  end
end
