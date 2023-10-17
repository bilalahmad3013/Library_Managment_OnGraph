require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "valid student" do
    student = Student.new(
      email: 'test@example.com',
      password: 'password123',
      password_confirmation: 'password123',
      phone_number: '123-456-7890',
      pincode: '10001',
      adress: '123 Main St',
      state: 'New York',
      first_name: 'John',
      last_name: 'Doe'
    )
    assert student.valid?
  end

  test "invalid student without email" do
    student = Student.new(
      password: 'password123',
      password_confirmation: 'password123'
    )
    assert_not student.valid?
  end 
end
