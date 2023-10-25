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
end
