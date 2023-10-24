class App
  def initialize
    @items = []
  end

  def run
    puts 'Welcome to our catalog!'
    loop do
      op_0
    end
  end

  def show_menu
    puts " \n Select an option by number:"
    puts '1) List items (books, music albums or games)'
    puts '2) List categories (genres, labels or authors)'
    puts '3) Add items (book, music album or game)'
    puts '4) Exit'
  end

  def op_0
    show_menu
    user_input = gets.chomp.to_i
    case user_input
    when 1
      op_1
    when 2
      op_2
    when 3
      op_3
    when 4
      exit_app
    else
      puts 'Invalid option'
    end
  end

  def op_1
    puts " \n Select an option by number:"
    puts '1) List all books'
    puts '2) List all music albums'
    puts '3) List all games'
    puts '4) Go back Main to Menu'
    option = gets.chomp.to_i
    case option
    when 1
      'list all books'
    when 2
      'list all music albums'
    when 3
      'list all games'
    when 4
      op_0
    else
      puts 'Invalid option'
    end
  end

  def op_2
    puts " \n Select an option by number:"
    puts '1) List all genres (e.g \'Comedy\', \'Thriller\')'
    puts '2) List all labels (e.g. \'Gift\', \'New\')'
    puts '3) List all authors (e.g. \'Stephen King\')'
    puts '4) Go back Main to Menu'
    option = gets.chomp.to_i
    case option
    when 1
      'list all genres'
    when 2
      'list all labels'
    when 3
      'list all authors'
    when 4
      op_0
    else
      puts 'Invalid option'
    end
  end

  def op_3
    puts " \n Select an option by number:"
    puts '1) Add a book'
    puts '2) Add a music album'
    puts '3) Add a game'
    puts '4) Go back Main to Menu'
    option = gets.chomp.to_i
    case option
    when 1
      'add book'
    when 2
      'add music album'
    when 3
      'add game'
    when 4
      op_0
    else
      puts 'Invalid option'
    end
  end

  def exit_app
    puts 'Thank you for using the app!'
    exit
  end
end
