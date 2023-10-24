class Genre
  attr_reader :id, :items
  attr_accessor :name

  def initialize(name)
    @id = Random.rand(1..1000)
    @name = name
    @items = []
  end

  private

  def add_item(item)
    item.add_genre(self)
    @items << item
  end
end
