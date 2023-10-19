# frozen_string_literal: true (edited) 
#this controller will create a entry in database if student req any book
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
       
        render json: { msg: "true" }     
      else
        flash[:error] = "Book request not sent successfully"
        render json: { msg: "false" }   
      end
  
      
    end
    

  end
  