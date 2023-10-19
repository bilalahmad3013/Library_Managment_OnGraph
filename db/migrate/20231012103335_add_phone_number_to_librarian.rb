class AddPhoneNumberToLibrarian < ActiveRecord::Migration[7.1]
  def change
    add_column :librarians, :phone_number, :string
  end
end
