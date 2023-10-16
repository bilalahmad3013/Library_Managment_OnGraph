class BookRequestsController < ApplicationController
    def send_email
      book_id = params[:book_id]
      book = Book.find(book_id) if book_id.present?
      librarian_id = book.librarian_id
      librarian=Librarian.find(librarian_id)  
      student=current_student     
  
      if book
        request = Request.new(book_id: book_id, student_id: student.id)
        request.save
        BookRequestMailer.send_book_request(book, librarian,student).deliver_now
        flash[:success] = "Request sent to librarian!"
      else
        flash[:error] = "Book not found."
      end
  
      redirect_to root_path 
    end
    

  end
  