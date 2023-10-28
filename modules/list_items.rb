module ListItems
  def list_all_books
    if @books.empty?
      puts 'There are no books yet.'
    else
      puts 'Books:'
      @books.each_with_index do |book, index|
        puts "#{index + 1}) ID: #{book.id}, Publish date: #{book.publish_date}, Cover State: #{book.cover_state}"
      end
    end
  end

  def list_all_games
    if @games.empty?
      puts 'The Games list is empty.'
    else
      puts 'Games:'
      @games.each_with_index do |game, index|
        puts "#{index + 1}) ID: #{game.id}, Publish date: #{game.publish_date}"
        puts "   Multiplayer: #{game.multiplayer}, Last played at: #{game.last_played_at}\n"
      end
    end
  end

  def list_all_albums
    if @albums.empty?
      puts 'The music albums list is empty.'
    else
      print 'Music Albums: '
      @albums.each_with_index do |album, index|
        puts "#{index + 1}) ID: #{album.id}, Publish date: #{album.publish_date}"
        puts "   On spotify: #{album.on_spotify}, Published at: #{album.publish_date}\n"
      end
    end
  end

  def list_all_genres
    if @genres.empty?
      puts 'The genre list is empty.'
    else
      print 'Genre: '
      @genres.each_with_index do |genre, index|
        puts "#{index + 1}) ID: #{genre.id}, Name: #{genre.name}"
      end
    end
  end
end
