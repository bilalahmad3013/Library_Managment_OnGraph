class CreateStudentBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :student_books do |t|
      t.references :student, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
