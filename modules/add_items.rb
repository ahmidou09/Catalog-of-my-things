require './classes/book'
require './classes/label'
require_relative 'add_category'

module CreateItems
  include CreateCategory
  def add_book
    print 'Enter publish date: '
    publish_date = gets.chomp
    print 'Enter the book publisher: '
    publisher = gets.chomp
    cover_state = book_cover_state
    author = "create_author"
    genre = "create_genre"
    label = create_label('album')
    new_book = Book.new(publish_date, publisher, cover_state)
    new_book.add_label(label)
    new_book.add_genre(genre)
    new_book.add_author(author)
    @books << new_book
    puts 'Your book has been created'
  end
end
