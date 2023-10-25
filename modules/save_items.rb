require 'json'
require './classes/book/book'
require './classes/game/game'

module SaveItems
  def save_book
    File.open('./data/book.json', 'w') do |file|
      file.puts @books.map { |book|
        { 'id' => book.id,
          'publish_date' => book.publish_date,
          'publisher' => book.publisher,
          'cover_state' => book.cover_state,
          'author_id' => book.author.id,
          'label_id' => book.label.id }
      }.to_json
    end
  end

  def save_game
    File.open('./data/game.json', 'w') do |file|
      file.puts @games.map { |game|
        { 'id' => game.id,
          'publish_date' => game.publish_date,
          'multiplayer' => game.multiplayer,
          'last_played_at' => game.last_played_at,
          'label_id' => game.label.id,
          'author_id' => game.author.id }
      }.to_json
    end
  end
end
