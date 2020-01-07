class AddSettingsIndexToComic < ActiveRecord::Migration[6.0]
  def change
    add_index :comics, :settings, using: :gin
  end
end
