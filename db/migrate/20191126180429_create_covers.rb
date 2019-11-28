class CreateCovers < ActiveRecord::Migration[6.0]
  def change
    create_table :covers do |t|
      t.references :coverable, polymorphic: true, null: false
    end
  end
end
