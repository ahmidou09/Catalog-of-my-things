require './classes/label/label'

module CreateCategory
  def create_label(item_add)
    print "Enter the #{item_add} label title: "
    title = gets.chomp
    print "Enter the #{item_add} color: "
    color = gets.chomp

    existing_label = @labels.find { |el| el.title == title && el.color == color }

    if existing_label
      existing_label
    else
      new_label = Label.new(title, color)
      @labels << new_label
      new_label
    end
  end
end
