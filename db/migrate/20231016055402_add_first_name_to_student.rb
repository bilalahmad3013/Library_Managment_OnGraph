class AddFirstNameToStudent < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :first_name, :string
  end
end
