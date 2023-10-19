class BookRequestMailer < ApplicationMailer
    def send_book_request(book, librarian,student)
      @book = book
      @librarian = librarian
      @student = student

      email=Librarian.find_by(id:librarian.id).email
      mail(to:email , subject: 'Book Request')
    end
  end
  