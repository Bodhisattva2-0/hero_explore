class MapExplorer
  def initialize(map, hero)
    @map = map
    @hero = hero
  end

  def explore(moves)
    moves.each do |move|
      @hero.position = @map.move(move, @hero.position)
    end
  end
end
