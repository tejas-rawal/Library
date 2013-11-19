class Library

  #initialize books array of class Library

  def initialize
    
    @books = []
  
  end

# joins all books in library into a string

# seperated by a ", "

# Example: "Book1, Book2, Book3, ..."

  def books
    
    puts @books.join(", ")
  
  end

# Creates a hash with keys = the title of the books in the Library

# and the values = their status (either available or borrowed)

  def list_books
    
    listed_books = {}

    @books.each do |book|
      listed_books[book.title] = book.status 

    end

  end

# Creates a hash contaiting the borrowed books

# with the keys = book titles and the values = the name of the borrower

  def borrowed_books
    
    borrowed_books = {}
    
    @books.each do |book|
      if book.status == :borrowed
        
        borrowed_books[book.title] = book.borrower

      end

    end
  
  end

# Creates an array containing all book that are available in the library

# Checks to see if book is available before pushing to array

  def available_books
    
    available_books = []
    
    @books.each do |book|
      
      if book.status == :available
        
        available_books << book.title

      end

    end

  end

# Adds book to the @books array

  def add_book(book)
    
    @books << book
  
  end

# Check out a book that is available to a borrower

# Borrower can only check out book if they have less than 2

  def check_out(user, book)
    
    if book.status == :available
      
      if user.user_books.size < 2
        
        book.borrower = user
        user.user_books << book
        book.status = :borrowed
      
      else
        
        puts "Sorry, you cannot check out any more books"
      
      end
    
    else
      
      puts "Sorry, that book is not available"
    
    end
  
  end

# Check in a book that has been borrowed

# Push the book back into the books array

# Deletes the book from the borrower's array

  def check_in(book)
    
    @books << book
    book.status = :available
    book.borrower = nil
    user_books.delete(book)
  
  end

end

class Borrower

  #initialize attributes of the Borrower
  
  attr_accessor :user_books
  
  def initialize(name)
    
    @name = name
    @user_books = []
  
  end

  def borrowed_books
  
  end


  def borrowed_books_count
  
  end

# Returns @user_books array which includes all books the Borrower

# has checked out

  def borrowed_books_list
    
    @user_books
    
    puts "#{@user_books}"

  end

end

class Book
  
  # initialize attributes of the Book class

  attr_reader :title, :author
  attr_accessor :status, :borrower

  def initialize(title, author)
    
    @title = title
    @author = author
    @status = :available
    @borrower = nil
  
  end

end
