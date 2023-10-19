class AddAddressToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :adress, :string
  end
end
