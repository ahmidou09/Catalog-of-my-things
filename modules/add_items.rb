require './classes/book/book'
require './classes/label/label'
require_relative 'add_category'

module CreateItems
  include CreateCategory
  def add_book
    print 'Enter publish date: '
    publish_date = gets.chomp
    print 'Enter the book publisher: '
    publisher = gets.chomp
    cover_state = book_cover_state
    author = 'create_author'
    genre = 'create_genre'
    label = create_label('album')
    new_book = Book.new(publish_date, publisher, cover_state)
    new_book.add_label(label)
    new_book.add_genre(genre)
    new_book.add_author(author)
    @books << new_book
    puts 'Your book has been created'
  end

  def book_cover_state()
    loop do
      print 'Enter the book cover state (good/bad): '
      cover_state_input = gets.chomp.upcase
      if cover_state_input == 'GOOD'
        return true
      elsif cover_state_input == 'BAD'
        return false
      else
        puts 'Invalid option. Please enter "good" or "bad".'
      end
    end
    cover_state
  end
end
