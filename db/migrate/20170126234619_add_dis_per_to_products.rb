class AddDisPerToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :dis_per, :integer
  end
end
