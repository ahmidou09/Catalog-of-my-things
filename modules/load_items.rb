require 'json'
require './classes/book'

module LoadItems
  def load_books
    return unless File.exist?('data/book.json')

    file = File.read('data/book.json')
    book_hash = JSON.parse(file)
    book_hash.each do |book|
      new_book = Book.new(book['publish_date'], book['publisher'], book['cover_state'], book['id'])
      search_categories(book['label_id'], book['genre_id'], book['author_id'], new_book)
      @books << new_book
    end
  end

  def search_categories(label_id, item)
    saved_label = @labels.find { |el| el.id == label_id }
    item.add_label(saved_label)
  end
end
