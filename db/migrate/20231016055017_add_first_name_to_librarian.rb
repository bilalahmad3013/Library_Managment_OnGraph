class AddFirstNameToLibrarian < ActiveRecord::Migration[7.1]
  def change
    add_column :librarians, :first_name, :string
  end
end
