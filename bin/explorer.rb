require_relative "../lib/map.rb"
require_relative "../lib/hero.rb"
require_relative "../map_explorer.rb"

x_coordinate, y_coordinate = gets.chomp.split(" ").map(&:to_i)
map = Map.new(x_coordinate, y_coordinate)


#First Hero
x_pos, y_pos, direction = gets.chomp.split(" ")
hero_1 = Hero.new(x_pos.to_i, y_pos.to_i, direction)
moves_1 = gets.chomp.split("")
map_explorer_1 = MapExplorer.new(map, hero_1)
map_explorer_1.explore(moves_1)

#Second Hero
x_pos, y_pos, direction = gets.chomp.split(" ")
hero_2 = Hero.new(x_pos.to_i, y_pos.to_i, direction)
moves_2 = gets.chomp.split("")
map_explorer_2 = MapExplorer.new(map, hero_2)
map_explorer_2.explore(moves_2)

#Output
puts map_explorer_1.destination
puts map_explorer_2.destination


