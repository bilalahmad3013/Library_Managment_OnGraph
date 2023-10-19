class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :pages
      t.integer :librarian_id

      t.timestamps
    end
  end
end
