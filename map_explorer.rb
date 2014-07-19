class MapExplorer
  def initialize(map, hero)
    @map = map
    @hero = hero
  end

  def explore(moves)
    moves.each do |move|
      @hero.move(move, @map)
    end
  end

  def destination
    position = @hero.position
    [position[:x], position[:y], position[:dir].key].join(" ")
  end
end
