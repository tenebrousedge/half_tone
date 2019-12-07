class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.integer :sort_order
      t.references :comic, unique: true
      t.timestamps
    end
    add_index :books, %i[comic_id sort_order], unique: true
  end
end
