class CreateCustomStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_styles do |t|
      t.string :text
      t.references :styleable, polymorphic: true, null: false
      t.timestamps
      add_index :custom_styles, %i[styleable_type styleable_id]
    end
  end
end
