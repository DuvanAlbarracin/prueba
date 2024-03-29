class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :description
      t.date :year
      t.integer :rental_duration
      t.integer :rating
      t.integer :duration
      t.float :rental_price

      t.timestamps
    end
  end
end
