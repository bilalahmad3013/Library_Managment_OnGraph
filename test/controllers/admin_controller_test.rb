require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  def setup
    @admin = admins(:one)
    sign_in @admin
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

#   test "should get edit" do
#     book = books(:one)  # Assuming you have a fixture named "books"
#     get :edit, params: { id: book.id }
#     assert_response :success
#   end

#   test "should update book" do
#     book = books(:one)
#     new_title = "Updated Title"
#     patch :update, params: { id: book.id, book: { title: new_title } }
#     assert_redirected_to root_url
#     book.reload
#     assert_equal new_title, book.title
#   end

#   test "should not update book with invalid data" do
#     book = books(:one)
#     patch :update, params: { id: book.id, book: { title: "" } }
#     assert_template :edit
#   end

#   test "should destroy book" do
#     book = books(:one)
#     delete :destroy, params: { id: book.id }
#     assert_redirected_to root_path
#     assert_raise(ActiveRecord::RecordNotFound) { book.reload }
#   end

#   test "should get student" do
#     get :student
#     assert_response :success
#   end

#   test "should get book" do
#     student = students(:one)  # Assuming you have a fixture named "students"
#     get :book, params: { student_id: student.id }
#     assert_response :success
#   end

#   test "should get studentlist" do
#     book = books(:one)
#     get :studentlist, params: { book_id: book.id }
#     assert_response :success
#   end
end
