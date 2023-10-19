class AddLastNameToLibrarian < ActiveRecord::Migration[7.1]
  def change
    add_column :librarians, :last_name, :string
  end
end
