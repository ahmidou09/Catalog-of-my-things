require 'json'
require './classes/label/label'
require './classes/author/author'

module LoadCategories
  def load_labels
    return unless File.exist?('data/labels.json')

    file = File.read('data/labels.json')
    labels_hash = JSON.parse(file)
    labels_hash.each do |label|
      @labels << Label.new(label['title'], label['color'], label['id'])
    end
  end

  def load_authors
    return unless File.exist?('data/authors.json')

    file = File.read('data/authors.json')
    authors_hash = JSON.parse(file)
    authors_hash.each do |author|
      @authors << Author.new(author['first_name'], author['last_name'], author['id'])
    end
  end
end
