require_relative '../item/item'

class Game < Item
  def initialize(multiplayer, publish_date, last_played_at = Date.new)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  private

  def can_be_archived?
    super && Date.today.year - Date.parse(@last_played_at).year > 2
  end
end
