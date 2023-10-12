class StaticPagesController < ApplicationController

  def home
     if  student_signed_in? 
     puts "student sign_in"
   elsif librarian_signed_in? 
    puts "librarian_sign_in"
   end 
  end

  def help
  end
end



