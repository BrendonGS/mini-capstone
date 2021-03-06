class MakeChangesToProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :description, :text
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 10, scale: 2
    add_column :products, :in_stock, :boolean, default: true
  end
end
