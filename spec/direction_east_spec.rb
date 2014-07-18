require_relative "../lib/direction_east.rb"
require_relative "../lib/direction_north.rb"
require_relative "../lib/direction_south.rb"

describe DirectionEast do
  describe "key" do
    it "return E as key" do
      expect(DirectionEast.instance.key).to eq "E"
    end
  end

  describe "turning left" do
    it "return the new direction as north" do
      north = DirectionEast.instance
      expect(north.turn_left.key).to match DirectionNorth.instance.key
    end
  end

  describe "turning right" do
    it "return the new direction as south" do
      north = DirectionEast.instance
      expect(north.turn_right.key).to match DirectionSouth.instance.key
    end
  end
end
