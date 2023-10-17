require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest 
  setup do
     @librarian = librarians(:one)
      sign_in @librarian
     @book = books(:one)
    
   end

  test "should get new" do
    get new_book_path
    assert_response :success
  end

  test "should create a new book" do    
    book_params = {
      title: "New Book Title",
      author: "New Book Author",
      pages:  123      
    }   
    post books_path, params: { book: book_params }  
    assert_redirected_to book_path(Book.last)    
   
    assert_difference('Book.count', 1) do
      post books_path, params: { book: book_params }
    end
  end 

  test "should show book" do   
    get book_path(@book)    
    assert_response :success   
    assert_equal @book, assigns(:book)
  end

  # test "should update book" do   
  #   book_params = {
  #     title: "abcd",              
  #     }
  #     # debugger
  #     # get edit_book_path(@book)
  #     # assert_template 'books/edit'
  #     patch book_path(@book), params: { book: book_params }
  #     @book.reload
    
  #     assert_redirected_to book_path(@book)
   
  # end 

  # test "should destroy book" do
  #   debugger    
  #   assert_difference('Book.count', -1) do
  #     delete book_path(@book)
  #   end

  #   assert_redirected_to root_url
  #   assert_equal 'Book was successfully deleted.', flash[:notice]
  # end
end
