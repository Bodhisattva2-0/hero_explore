require_relative "../lib/map.rb"

describe Map do
  context "hero is facing north at (1,1)" do
    describe "move" do
      let(:position) { {x: 1, y: 1, dir: "N"} }

      it "updates the position to west if the next move if left" do
        map = Map.new(5,5)
        expect(map.move("L", position)).to eq ({x: 1, y: 1, dir: "W" })
      end

      it "updates the position to west if the next move if right" do
        map = Map.new(5,5)
        expect(map.move("R", position)).to eq ({x: 1, y: 1, dir: "E" })
      end

    end
  end
end
