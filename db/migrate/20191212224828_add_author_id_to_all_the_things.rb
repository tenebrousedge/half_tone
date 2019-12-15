class AddAuthorIdToAllTheThings < ActiveRecord::Migration[6.0]
  def change
    add_reference :backgrounds, :author, index: true
    add_reference :books, :author, index: true
    add_reference :covers, :author, index: true
    add_reference :custom_styles, :author, index: true
    add_reference :pages, :author, index: true
  end
end
