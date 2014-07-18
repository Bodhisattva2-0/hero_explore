require_relative "../lib/direction_north.rb"
require_relative "../lib/direction_west.rb"
require_relative "../lib/direction_east.rb"

describe DirectionNorth do
  describe "key" do
    it "return N as key" do
      expect(DirectionNorth.instance.key).to eq "N"
    end
  end

  describe "turning left" do
    it "return the new direction as west" do
      north = DirectionNorth.instance
      expect(north.turn_left.key).to match DirectionWest.instance.key
    end
  end

  describe "turning right" do
    it "return the new direction as east" do
      north = DirectionNorth.instance
      expect(north.turn_right.key).to match DirectionEast.instance.key
    end
  end
end
