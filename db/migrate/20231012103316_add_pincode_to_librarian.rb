class AddPincodeToLibrarian < ActiveRecord::Migration[7.1]
  def change
    add_column :librarians, :pincode, :string
  end
end
