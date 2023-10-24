class MusicAlbum < Item
  def initialize(on_spotify, publish_date)
    super(publish_date)
    @on_spotify = on_spotify
  end

  private

  def can_be_archived?
    true if publish_date > 10
  end
end
