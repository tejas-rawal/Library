class Library

  def initialize
    
    @books = []
  
  end

  def books
    
    puts @books.join(", ")
  
  end

  def list_books
    
    listed_books = {}

    @books.each do |book|
      listed_books[book.title] = book.status 

    end

  end

  def borrowed_books
    
    borrowed_books = {}
    
    @books.each do |book|
      if book.status == :borrowed
        
        borrowed_books[book] = book.borrower

      end

    end
  
  end

  def available_books
    
    available_books = []
    
    @books.each do |book|
      
      if book.status == :available
        
        available_books << book.title

      end

    end

  end

  def add_book(book)
    
    @books << book
  
  end

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

  def check_in(book)
    
    @books << book
    book.status = :available
    book.borrower = nil
    user_books.delete(book)
  
  end

end

class Borrower
  
  attr_accessor :user_books
  
  def initialize(name)
    
    @name = name
    @user_books = []
  
  end

  def borrowed_books
  
  end


  def borrowed_books_count
  
  end

  def borrowed_books_list
    
    @user_books
    
    puts "#{@user_books}"

  end

end

class Book
  
  attr_reader :title, :author
  attr_accessor :status, :borrower

  def initialize(title, author)
    
    @title = title
    @author = author
    @status = :available
    @borrower = nil
  
  end

end
