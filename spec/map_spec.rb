require_relative "../lib/map.rb"

describe Map do
  describe "move" do
    context "hero is facing north at (1,1) and turning" do
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

    context "hero is at (1,1) and stepping " do
      let(:position) { {x: 1, y: 1} }

      it "increments y coordinate by 1 if hero is facing north" do
        position[:dir] = "N"
        map = Map.new(5,5)
        expect(map.move("M", position)).to eq ({x: 1, y: 2, dir: "N" })
      end

       it "decrements y coordinate by 1 if hero is facing south" do
        position[:dir] = "S"
        map = Map.new(5,5)
        expect(map.move("M", position)).to eq ({x: 1, y: 0, dir: "S" })
      end

       it "increments x coordinate by 1 if hero is facing east" do
        position[:dir] = "E"
        map = Map.new(5,5)
        expect(map.move("M", position)).to eq ({x: 2, y: 1, dir: "E" })
      end

       it "increments y coordinate by 1 if hero is facing north" do
        position[:dir] = "W"
        map = Map.new(5,5)
        expect(map.move("M", position)).to eq ({x: 0, y: 1, dir: "W" })
      end
    end
  end
end
