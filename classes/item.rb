class Item
  attr_accessor :id, :author, :label, :publish_date, :genre

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = false
  end

  def add_label(label)
    @label = label
  end

  def add_author(author)
    @author = author
  end

  def add_genre(genre)
    @genre = genre
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
