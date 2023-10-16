class StudentFeaturesController < ApplicationController

    def index
        @books = Book.page(params[:page]).per(5) # Paginate with 5 books per page
      end
      
    
    def requested
        @requests = current_student.requests.includes(:book).order(created_at: :desc).page(params[:page]).per(5)
    end
         

end
