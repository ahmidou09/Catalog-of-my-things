require_relative 'app'

def main
  app = App.new

  puts 'Welcome to our catalog!'
  app.load_all_items

  loop do
    puts " \n Select an option by number:"
    puts '1) List items (books, music albums or games)'
    puts '2) List categories (genres, labels or authors)'
    puts '3) Add items (book, music album or game)'
    puts '4) Exit'

    app.launch
  end
end

main
