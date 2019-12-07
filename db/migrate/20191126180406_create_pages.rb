class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.time :published_at
      t.integer :sort_order
      t.references :pageable, polymorphic: true, null: false
      t.timestamps
    end
    add_index :pages, %i[pageable_type pageable_id sort_order], unique: true
  end
end
