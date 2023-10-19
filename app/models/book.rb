class Book < ApplicationRecord
    has_many :student_books
    validates :title, :author, :pages, presence: true
    belongs_to :librarian, class_name: 'Librarian'
    has_many :students, through: :student_books
    has_many :requests
end
