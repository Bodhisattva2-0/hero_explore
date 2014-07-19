require 'matrix'
require_relative "./direction_north.rb"
require_relative "./direction_south.rb"
require_relative "./direction_west.rb"
require_relative "./direction_east.rb"


class Map

  def initialize(x,y)
    @x_boundary = x
    @y_boundary = y
  end

  def next_position(position)
    next_position = new_position(position)
    if out_of_bound?(next_position)
      p "End of map reached."
      position
    else
      next_position
    end
  end

  private

  def new_position(position)
      x, y, dir = position.values
    case dir
    when DirectionNorth.instance
      position.merge(y: y + 1)
    when DirectionSouth.instance
      position.merge(y: y - 1)
    when DirectionEast.instance
      position.merge(x: x + 1)
    when DirectionWest.instance
      position.merge(x: x - 1)
    end
  end

  def out_of_bound?(position)
    position[:x] > @x_boundary || position[:y] > @y_boundary
  end
end
