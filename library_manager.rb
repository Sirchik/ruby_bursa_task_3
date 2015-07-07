require 'active_support/all'
require 'pry'

require_relative 'author.rb'
require_relative 'book.rb'
require_relative 'published_book.rb'
require_relative 'reader.rb'
require_relative 'reader_with_book.rb'

class LibraryManager

  attr_accessor :readers, :books, :readers_with_books

  def initialize readers = [], books = [], readers_with_books = []
    @reader_with_books = readers_with_books
    @readers = readers
    @books = books
  end

  def new_book author, title, price, pages_quantity, published_at
    books.push(PublishedBook.new author, title, price, pages_quantity, published_at)
  end

  def new_reader  name, reading_speed
    readers.push(Reader.new name, reading_speed)
  end

  def give_book_to_reader reader_name, book_title
    reader = readers.find{|r| r.name = reader_name}
    book = books.find{|b| b.title = book_title}
    readers_with_books.push(ReaderWithBook.new book, reader)
  end

  def read_the_book reader_name, duration

  end

  def reader_notification

  end

  def librarian_notification

  end

  def statistics_notification

  end

  private

  def reader_notification_params

  end

  def librarian_notification_params

  end

  def statistics_notification_params

  end

end
