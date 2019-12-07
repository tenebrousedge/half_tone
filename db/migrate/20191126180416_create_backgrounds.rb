class CreateBackgrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :backgrounds do |t|
      t.references :backgroundable, polymorphic: true, null: false
      t.timestamps
    end
  end
end
