class BooksController < ApplicationController
     before_action :authenticate_librarian! 
  
    def new
      @book = Book.new
    end
  
    def create
        @book = current_librarian.books.build(book_params)
        
        if @book.save
          flash[:notice] = 'Book was successfully created.'
          redirect_to @book
        else
          render :new
        end
      end
      
  
    def index
      @books = current_librarian.books     
    end
  
    def show
      @book = Book.find(params[:id])
    end
  
    def edit
      @book = current_librarian.books.find(params[:id])
    end
  
    def update
      @book = current_librarian.books.find(params[:id])
  
      if @book.update(book_params)
        redirect_to @book, notice: 'Book was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @book = current_librarian.books.find(params[:id])
      @book.destroy  
      redirect_to root_url, notice: 'Book was successfully deleted.'
    end
  
    private

    def book_params
      params.require(:book).permit(:title, :author, :pages)
    end
    
  end
  