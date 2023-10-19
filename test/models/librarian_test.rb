# In test/models/librarian_test.rb

require 'test_helper'

class LibrarianTest < ActiveSupport::TestCase
  test "valid librarian" do
    librarian = Librarian.new(
      email: 'test@example.com',
      password: 'password123',
      password_confirmation: 'password123',
      state: 'New York',
      adress: '123 Main St',
      pincode: '10001',
      phone_number: '123-456-7890',
      first_name: 'John',
      last_name: 'Doe'
    )
    assert librarian.valid?
  end

  test "invalid librarian without email" do
    librarian = Librarian.new(
      password: 'password123',
      password_confirmation: 'password123'
    )
    assert_not librarian.valid?
  end

end
