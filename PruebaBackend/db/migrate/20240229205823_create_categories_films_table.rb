class CreateCategoriesFilmsTable < ActiveRecord::Migration[7.0]
  def change
      create_table :categories_films, id: false do |t|
          t.bigint :film_id
          t.bigint :category_id

      t.timestamps
    end
      add_index :categories_films, :film_id
      add_index :categories_films, :category_id
  end
end
