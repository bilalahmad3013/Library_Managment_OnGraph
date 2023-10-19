# frozen_string_literal: true (edited) 
# frozen_string_literal: true (edited) 
class StudentFeaturesController < ApplicationController

    def index
        @books = Book.page(params[:page]).per(5)

       
      end
      
    
    def requested
        @requests = current_student.requests.includes(:book).order(created_at: :desc).page(params[:page]).per(5)
    end
         

end
