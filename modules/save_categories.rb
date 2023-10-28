require 'json'
require './classes/label/label'
require './classes/author/author'

module SaveCategories
  def save_label
    File.open('./data/labels.json', 'w') do |file|
      file.puts @labels.map { |label|
        { 'id' => label.id,
          'title' => label.title,
          'color' => label.color }
      }.to_json
    end
  end

  def save_author
    File.open('./data/authors.json', 'w') do |file|
      file.puts @authors.map { |author|
        { 'id' => author.id,
          'first_name' => author.first_name,
          'last_name' => author.last_name }
      }.to_json
    end
  end
end
