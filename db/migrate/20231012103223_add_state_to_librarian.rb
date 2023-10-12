class AddStateToLibrarian < ActiveRecord::Migration[7.1]
  def change
    add_column :librarians, :state, :string
  end
end
