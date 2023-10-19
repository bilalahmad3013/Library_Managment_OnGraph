# frozen_string_literal: true (edited) 
# All the logics of Admin writtien in this file 
class AdminController < ApplicationController
    before_action :authenticate_admin! 
    def index
      @books = Book.all
    end
  
    def edit
      @book = Book.find(params[:id])
    end

    def update    
        @book =Book.find(params[:id])
        if @book.update(book_params)
            redirect_to root_url, notice: 'Book was successfully updated.'
        else
            render :edit
        end
    end    
  
    def destroy
      @book = Book.find(params[:id])
      StudentBook.where(book_id: @book.id).destroy_all
      @book.destroy
      redirect_to root_path, notice: 'Book was successfully deleted.'
    end
    
    def student
     @students=Student.all
    end   
    
    def book    
        student_id = params[:student_id]
        @student = Student.find(student_id)
        @books = @student.books
    end


    def studentlist
       book_id = params[:book_id]
       @book =Book.find(book_id)
       @students = @book.students
    end    

  
    private

    def book_params
      params.require(:book).permit(:title, :author, :pages)
    end
  end
  