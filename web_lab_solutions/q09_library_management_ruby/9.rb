class Book
  attr_reader :title, :author
  attr_accessor :available

  def initialize(title, author)
    @title = title
    @author = author
    @available = true
  end

  def borrow
    return false unless available

    self.available = false
    true
  end

  def return_book
    self.available = true
  end
end

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def list_books
    @books.each_with_index do |book, index|
      status = book.available ? "Available" : "Borrowed"
      puts "#{index + 1}. #{book.title} by #{book.author} - #{status}"
    end
  end
end

library = Library.new
library.add_book(Book.new("Ruby Basics", "Matz"))
library.add_book(Book.new("Rails Guide", "DHH"))
library.add_book(Book.new("Web Development", "Alice"))

puts "Library Books:"
library.list_books
