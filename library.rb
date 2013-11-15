class Library

  def initialize
    @books = []
  end

  # def books
  #   puts @books.join(", ")
  # end

  def list_books
    @books.each do |book|
      library_hash = {}
      library_hash[book] = book.status
      puts library_hash
    end
  end

  def borrowed_books
  @books.each do |book|
    if book.status != "available"
      book.status = "borrowed"
    end
  end

  # def available_books
  # end

  def add_book(book)
    @books.push(book)
  end

  # def check_out(user, book)
  #   @user = user


  # end

#   def check_in(book)
#   end
end

# class Borrower
#   attr_writer :borrowed_books
#   def initialize(name)
#     @name = name
#   end

#   def borrowed_books(borrower, book)
#     @borrowed_books = {} 
#   end

#   def name
#   end

#   def borrowed_books_count
#   end

#   def borrowed_books_list
#   end
# end

class Book
  attr_reader :title, :author
  attr_successor :status, :borrower

  def initialize(title, author)
    @title = title
    @author = author
    @status = "available"
    @borrower = nil
  end
end
