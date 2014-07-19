require_relative "../lib/hero.rb"
require_relative "../lib/map.rb"
require_relative "../lib/direction_north.rb"
require_relative "../lib/direction_south.rb"
require_relative "../lib/direction_west.rb"
require_relative "../lib/direction_east.rb"


describe Hero do
  describe "position" do
    it "returns the current position" do
      hero = Hero.new(1, 2, "N")
      expect(hero.position).to eq({x: 1, y: 2, dir: DirectionNorth.instance})
    end
  end

  describe "move" do
    let(:x) { 1 }
    let(:y) { 1 }
    let(:dir) { "N" }

    context "hero is facing north at (1,1) and turning" do

      it "updates the position to west if the next move if left" do
        map = Map.new(5,5)
        hero = Hero.new(x, y, "N")
        hero.move("L", map)
        expect(hero.position).to eq ({x: 1, y: 1, dir: DirectionWest.instance })
      end

      it "updates the position to west if the next move if right" do
        map = Map.new(5,5)
        hero = Hero.new(x, y, "N")
        hero.move("R", map)
        expect(hero.position).to eq ({x: 1, y: 1, dir: DirectionEast.instance })
      end
    end

    context "hero is at (1,1) and stepping " do
      it "increments y coordinate by 1 if hero is facing north" do
        map = Map.new(5,5)
        hero = Hero.new(x, y, "N")
        hero.move("M", map)
        expect(hero.position).to eq ({x: 1, y: 2, dir: DirectionNorth.instance })
      end

      it "decrements y coordinate by 1 if hero is facing south" do
        map = Map.new(5,5)
        hero = Hero.new(x, y, "S")
        hero.move("M", map)
        expect(hero.position).to eq ({x: 1, y: 0, dir: DirectionSouth.instance })
      end

      it "increments x coordinate by 1 if hero is facing east" do
        map = Map.new(5,5)
        hero = Hero.new(x, y, "E")
        hero.move("M", map)
        expect(hero.position).to eq ({x: 2, y: 1, dir: DirectionEast.instance })
      end

      it "decrements x coordinate by 1 if hero is facing west" do
        map = Map.new(5,5)
        hero = Hero.new(x, y, "W")
        hero.move("M", map)
        expect(hero.position).to eq ({x: 0, y: 1, dir: DirectionWest.instance })
      end
    end
  end
end
