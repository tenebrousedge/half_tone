class CreateCustomStyles < ActiveRecord::Migration[6.0]
  def change
    create_table :custom_styles do |t|
      t.string :text
      t.references :styleable, polymorphic: true, null: false
    end
  end
end
