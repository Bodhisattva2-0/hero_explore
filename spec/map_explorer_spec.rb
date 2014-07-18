require_relative "../map_explorer.rb"
require_relative "../lib/hero.rb"
require_relative "../lib/map.rb"

describe MapExplorer do
  describe "explore" do
    it "updates the position of hero through all the moves in the map" do
      hero = Hero.new(1, 1, "N")
      map = Map.new(5, 5)
      map_explorer = MapExplorer.new(map, hero)
      moves = ["L", "R", "M"]
      map_explorer.explore(moves)
      expect(hero.position).to eq({x: 1, y: 2, dir: "N"})
    end
  end

  describe "destination" do
    it "shows the current position of hero after all moves are made" do
      hero = Hero.new(1, 1, "N")
      map = Map.new(5, 5)
      map_explorer = MapExplorer.new(map, hero)
      moves = ["L", "R", "M"]
      map_explorer.explore(moves)
      expect(map_explorer.destination).to eq "1 2 N"
    end
  end
end
