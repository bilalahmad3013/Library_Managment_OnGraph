class AddPincodeToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :pincode, :string
  end
end
