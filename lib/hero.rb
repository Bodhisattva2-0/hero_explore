require_relative "./direction_north.rb"
require_relative "./direction_south.rb"
require_relative "./direction_west.rb"
require_relative "./direction_east.rb"

class Hero
  def initialize(x, y, dir)
    @x = x
    @y = y
    @dir = direction(dir)
  end


  def move(move, map)
    case move
    when "L"
      @dir = @dir.turn_left
    when "R"
      @dir =  @dir.turn_right
    when "M"
      new_position = map.next_position(position)
      update_position(new_position)
    end
    position
  end

  def position
    {x: @x, y: @y, dir: @dir}
  end

  private

  def direction(dir)
    case dir
    when "N"
      DirectionNorth.instance
    when "S"
      DirectionSouth.instance
    when "W"
      DirectionWest.instance
    when "E"
      DirectionEast.instance
    end
  end

  def update_position(new_position)
    @x = new_position[:x]
    @y = new_position[:y]
    @dir = new_position[:dir]
  end
end
