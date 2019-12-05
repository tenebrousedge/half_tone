class CreateBackgrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :backgrounds do |t|
      t.references :backgroundable, polymorphic: true, null: false
      t.timestamps
      add_index :backgrounds, %i[backgroundable_type backgroundable_id]
    end
  end
end
