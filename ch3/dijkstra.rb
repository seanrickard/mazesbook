require 'distance_grid'
require 'binary_tree'

grid = DistanceGrid.new(5, 5)
BinaryTree.on(grid)

start = grid[0, 0]
distances = start.distances

grid.distances = distances
puts grid

puts "\npath from northwest corner to southwest corner:"
grid.distances = distances.path_to(grid[grid.rows - 1, 0])
puts grid.to_s

puts "\npath from northwest corner to southeast corner:"
grid.distances = distances.path_to(grid[grid.rows - 1, 4])
puts grid.to_s