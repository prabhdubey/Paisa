class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :url
      t.float :actual_price
      t.float :dis_price

      t.timestamps
    end
  end
end
