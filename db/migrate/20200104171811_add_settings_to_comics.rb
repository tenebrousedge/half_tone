class AddSettingsToComics < ActiveRecord::Migration[6.0]
  def change
    add_column :comics, :settings, :jsonb, null: false, default: '{}'
  end
end
