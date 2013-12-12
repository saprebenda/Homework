class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :description
      t.decimal :price
      t.string :name
      t.integer :count

      t.timestamps
    end
  end
end
