class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :encrypted_password
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.timestamps

      add_index :authors, :email,                unique: true
      add_index :authors, :reset_password_token, unique: true
      add_index :authors, :confirmation_token,   unique: true
    end
  end
end
