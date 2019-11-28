class CreateComics < ActiveRecord::Migration[6.0]
  def change
    create_table :comics do |t|
      t.string :title
      t.string :subtitle
      t.integer :sort_order
      t.author :references
      t.timestamps
    end
  end
end
