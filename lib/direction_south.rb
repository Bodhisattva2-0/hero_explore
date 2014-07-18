require 'singleton'
class DirectionSouth
  include Singleton

  def key
    "S"
  end

  def turn_left
    DirectionEast.instance
  end

  def turn_right
    DirectionWest.instance
  end
end
