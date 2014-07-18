require_relative "../lib/direction_west.rb"
require_relative "../lib/direction_south.rb"
require_relative "../lib/direction_north.rb"

describe DirectionWest do
  describe "key" do
    it "return W as key" do
      expect(DirectionWest.instance.key).to eq "W"
    end
  end

  describe "turning left" do
    it "return the new direction as south" do
      north = DirectionWest.instance
      expect(north.turn_left.key).to match DirectionSouth.instance.key
    end
  end

  describe "turning right" do
    it "return the new direction as north" do
      north = DirectionWest.instance
      expect(north.turn_right.key).to match DirectionNorth.instance.key
    end
  end
end
