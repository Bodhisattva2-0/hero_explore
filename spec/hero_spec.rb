require_relative "../lib/hero.rb"

describe Hero do
  describe "position" do
    it "returns the current position" do
      hero = Hero.new(1, 2, "N")
      expect(hero.position).to eq({x: 1, y: 2, dir: "N"})
    end
  end
end
