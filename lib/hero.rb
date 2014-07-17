class Hero
  attr_accessor :position

  def initialize(x, y, dir)
    @position = {x: x, y: y, dir: dir}
  end
end
