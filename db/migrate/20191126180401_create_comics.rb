class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :subtitle
      t.integer :sort_order
      t.references :author, null: false
      t.timestamps
    end
    add_index :comics, :sort_order
    add_index :comics, %i[author_id title], unique: true
    add_index :comics, %i[author_id sort_order], unique: true
  end
end
