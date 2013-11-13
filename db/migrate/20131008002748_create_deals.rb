class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :Object_Name
      t.integer :price
      t.belongs_to :User

      t.timestamps
    end
    add_index :deals, :User_id
  end
end
