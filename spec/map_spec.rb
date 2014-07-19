require_relative "../lib/map.rb"
require_relative "../lib/direction_north.rb"
require_relative "../lib/direction_south.rb"
require_relative "../lib/direction_west.rb"
require_relative "../lib/direction_east.rb"

describe Map do
  describe "position" do
    let(:position) { {x: 1, y: 2} }
    it "increases x coordinate by 1 if hero is facing east" do
      map = Map.new(5,5)
      expect(map.next_position(position.merge(dir: DirectionEast.instance))).to eq ({x: 2, y: 2, dir: DirectionEast.instance })
    end

    it "decreases x coordinate by 1 if hero is facing west" do
      map = Map.new(5,5)
      expect(map.next_position(position.merge(dir: DirectionWest.instance))).to eq ({x: 0, y: 2, dir: DirectionWest.instance })
    end

    it "increases y coordinate by 1 if hero is facing north" do
     map = Map.new(5,5)
     expect(map.next_position(position.merge(dir: DirectionNorth.instance))).to eq ({x: 1, y: 3, dir: DirectionNorth.instance })
   end

   it "decreases y coordinate by 1 if hero is facing south" do
     map = Map.new(5,5)
     expect(map.next_position(position.merge(dir: DirectionSouth.instance))).to eq ({x: 1, y: 1, dir: DirectionSouth.instance })
   end
 end
end
