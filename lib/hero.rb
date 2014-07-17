class Hero
  def initialize(x, y, dir)
    @x_coordinate = x
    @y_coordinate = y
    @dir = dir
  end

  def position
    {x: @x_coordinate, y: @y_coordinate, dir: @dir}
  end
end
