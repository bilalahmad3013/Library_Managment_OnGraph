class AddAddressToLibrarian < ActiveRecord::Migration[7.1]
  def change
    add_column :librarians, :adress, :string
  end
end
