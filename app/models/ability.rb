class Ability
    include CanCan::Ability
  
    def initialize(user)
        debugger
      user ||= User.new  # Handle the case when a user is not logged in
  
      if user.librarian?
        can :create, Book  # Librarians can create books
        can :manage, Book, librarian_id: user.id  # Librarians can manage their own books
      end
    end
  end
  