require 'matrix'

class Map

  LEFT_TURN = {"N" => "W", "S" => "E", "E" => "N", "W" =>"N"}
  RIGHT_TURN = {"N" => "E", "S" => "W", "E" => "S", "W" =>"S"}
  NEXT_STEP = {"N" => :step_ahead, "S" =>:step_behind, "E" => :step_right, "W" => :step_left}
  STEP_SIZE = 1

  def initialize(x,y)
    @map = Matrix.build(x,y) {0}
  end

  def move(move, position)
    case move
    when "L"
      position.merge(dir: LEFT_TURN[position[:dir]])
    when "R"
      position.merge(dir: RIGHT_TURN[position[:dir]])
    when "M"
      send(NEXT_STEP[position[:dir]], position)
    end
  end

  private

  def step_ahead(position)
    position[:y] += STEP_SIZE
    position
  end

  def step_behind(position)
    position[:y] -= STEP_SIZE
    position
  end

  def step_left(position)
    position[:x] -= STEP_SIZE
    position
  end

  def step_right(position)
    position[:x] += STEP_SIZE
    position
  end
end
