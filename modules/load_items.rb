require 'json'
require './classes/book/book'
require './classes/game//game'

module LoadItems
  def load_books
    return unless File.exist?('data/book.json')

    file = File.read('data/book.json')
    book_hash = JSON.parse(file)
    book_hash.each do |book|
      new_book = Book.new(book['publish_date'], book['publisher'], book['cover_state'], book['id'])
      search_categories(book['label_id'], book['author_id'], new_book)
      @books << new_book
    end
  end

  def load_games
    return unless File.exist?('data/game.json')

    file = File.read('data/game.json')
    game_hash = JSON.parse(file)
    game_hash.each do |game|
      new_game = Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'], game['id'])
      search_categories(game['label_id'], game['author_id'], new_game)
      @games << new_game
    end
  end

  def search_categories(label_id, author_id, item)
    saved_label = @labels.find { |el| el.id == label_id }
    item.add_label(saved_label)
    saved_author = @authors.find { |el| el.id == author_id }
    item.add_author(saved_author)
  end

  def load_music_albums
    return unless File.exist?('./data/music_albums.json')

    file = File.read('./data/music_albums.json')
    albums_hash = JSON.parse(file)
    albums_hash.each do |album|
      new_album = MusicAlbum.new(album['on_spotify'], album['publish_date'])
      search_categories(album['label_id'], album['author_id'], new_album)
      @albums << new_album
    end
  end

  def load_genres
    return unless File.exist?('data/genres.json')

    file = File.read('data/genres.json')
    genres_hash = JSON.parse(file)
    genres_hash.each do |genre|
      @genres << Genre.new(genre['name'])
    end
  end
end
