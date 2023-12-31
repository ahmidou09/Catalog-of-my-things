require 'date'

class Item
  attr_accessor :author, :label, :publish_date, :genre
  attr_reader :id, :archived

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = false
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def move_to_archive()
    return unless can_be_archived?

    @archived = true
  end

  private

  def can_be_archived?
    return false if Date.today.prev_year(10) < Date.parse(@publish_date)

    true
  end
end
