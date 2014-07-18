require "singleton"

class DirectionNorth
  include Singleton

  def key
    "N"
  end

  def turn_left
    DirectionWest.instance
  end

  def turn_right
    DirectionEast.instance
  end
end
