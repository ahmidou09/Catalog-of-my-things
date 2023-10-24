class Label
  attr_accessor :id, :items, :title, :color

  def initialize(title, color, id = Random.rand(1..1000))
    @id = id
    @title = title
    @color = color
    @items = []
  end
end
