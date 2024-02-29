class CreateInventoryTable < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory do |t|
        t.bigint :film_id
        t.bigint :store_id
        t.string :quantity

      t.timestamps
    end
    add_index :inventory, :film_id
    add_index :inventory, :store_id
  end
end
