require 'matrix'

class Map
  LEFT_TURN = {"N" => "W", "S" => "E", "E" => "N", "W" =>"N"}
  RIGHT_TURN = {"N" => "E", "S" => "W", "E" => "S", "W" =>"S"}

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
    end
  end

end
