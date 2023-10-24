require 'json'
require './classes/book'

module SaveItems
  def save_book
    File.open('./data/book.json', 'w') do |file|
      file.puts @books.map { |book|
        { 'id' => book.id,
          'publish_date' => book.publish_date,
          'publisher' => book.publisher,
          'cover_state' => book.cover_state,
          'genre_id' => book.genre.id,
          'author_id' => book.author.id,
          'label_id' => book.label.id }
      }.to_json
    end
  end
end
