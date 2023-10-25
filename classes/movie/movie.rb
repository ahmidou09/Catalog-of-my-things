class Movie
  def initialize(silet)
    @silet = silet
  end

  private

  def can_be_archived?
    true if super.can_be_archived? || silent == true
  end
end
