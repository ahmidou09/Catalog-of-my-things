require 'json'
require './classes/label/label'

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
end
