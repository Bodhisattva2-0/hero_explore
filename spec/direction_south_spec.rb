require_relative "../lib/direction_south.rb"
require_relative "../lib/direction_west.rb"
require_relative "../lib/direction_east.rb"

describe DirectionSouth do
  describe "key" do
    it "return S as key" do
      expect(DirectionSouth.instance.key).to eq "S"
    end
  end

  describe "turning right" do
    it "return the new direction as west" do
      north = DirectionSouth.instance
      expect(north.turn_right.key).to match DirectionWest.instance.key
    end
  end

  describe "turning left" do
    it "return the new direction as east" do
      north = DirectionSouth.instance
      expect(north.turn_left.key).to match DirectionEast.instance.key
    end
  end
end
