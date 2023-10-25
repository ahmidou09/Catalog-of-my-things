module ListCategories
  def list_all_labels
    if @labels.empty?
      puts 'There are no labels yet.'
    else
      puts 'Labels:'
      @labels.each_with_index do |label, index|
        puts "#{index + 1}) ID: #{label.id}, Title: #{label.title}, Color: #{label.color}"
      end
    end
  end
end
