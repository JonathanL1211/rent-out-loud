class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
        t.string :content
        t.timestamps
    end
  end
end