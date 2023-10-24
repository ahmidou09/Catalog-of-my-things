require 'json'
require './classes/label'

module LoadCategories
  def load_labels
    return unless File.exist?('data/labels.json')

    file = File.read('data/labels.json')
    labels_hash = JSON.parse(file)
    labels_hash.each do |label|
      @labels << Label.new(label['title'], label['color'], label['id'])
    end
  end
end
