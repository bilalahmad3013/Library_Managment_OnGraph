class HandleRequestController < ApplicationController
    before_action :authenticate_librarian!
    before_action :authorize_librarian, only: [:approve_request, :cancel_request]
  
    def approve_request
      librarian_id = params[:librarian_id]
      book_id = params[:book_id]
      student_id = params[:student_id]
      
      librarian = Librarian.find(librarian_id)
      book = Book.find(book_id)
      student = Student.find(student_id)
  
      if librarian.present? && book.librarian == current_librarian
        book.students << student
        Request.where(book_id: book_id, student_id: student_id).destroy_all
        redirect_to root_path, notice: 'Request approved successfully!'
      else
        redirect_to root_path, alert: 'You are not authorized to approve this request.'
      end
    end
  
    def cancel_request
      librarian_id = params[:librarian_id]
      book_id = params[:book_id]
      student_id = params[:student_id]
  
      Request.where(book_id: book_id, student_id: student_id).destroy_all
      redirect_to root_path, notice: 'Request canceled successfully!'
    end
  
    private
  
    def permit_params
      params.permit(:librarian_id, :book_id, :student_id)
    end
  
    def authorize_librarian
      book_id = params[:book_id]  
      unless Book.find(book_id).librarian == current_librarian
        redirect_to root_path, alert: 'You are not authorized to perform this action.'
      end
    end
  end
  