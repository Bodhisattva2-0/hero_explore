require 'singleton'
class DirectionEast
  include Singleton

  def key
    "E"
  end

  def turn_left
    DirectionNorth.instance
  end

  def turn_right
    DirectionSouth.instance
  end

end
