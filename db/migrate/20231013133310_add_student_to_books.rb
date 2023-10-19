class AddStudentToBooks < ActiveRecord::Migration[7.1]
  def change
    add_reference :books, :student, foreign_key: true
  end
end
