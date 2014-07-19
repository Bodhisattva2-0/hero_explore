require 'matrix'
require_relative "./direction_north.rb"
require_relative "./direction_south.rb"
require_relative "./direction_west.rb"
require_relative "./direction_east.rb"


class Map

  def initialize(x,y)
    @map = Matrix.build(x,y) {0}
  end

  def next_position(position)
    new_position(position)
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
end
