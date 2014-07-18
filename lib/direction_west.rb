require 'singleton'
class DirectionWest
  include Singleton

  def key
    "W"
  end

  def turn_left
    DirectionSouth.instance
  end

  def turn_right
    DirectionNorth.instance
  end
end
