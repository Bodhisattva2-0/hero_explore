## To Run
* cd hero_explore
* Execute 'ruby ./bin/explorer.rb'
* provide input on command line

## Problem

Design a game/program where a group of heroes are exploring a map.

The map can be described as the first quadrant of a cartesian coordinate system. The bottom
left of the map is 0, 0, and the upper rightmost coordinates will be the largest (furthest from 0,0).
x, y stands for the coordinates and a letter (N,S,E,W) describes the direction a hero is facing.
For example a hero standing at (0, 3, W) means his x position is at 0 and y is at 3 and he is
facing west.

In order to control a hero you need to input a series of string commands, ‘L’ and ‘R’ means turn
90 degree left or right at the current position, ‘M’ means move forward one grid point. For
example, if a hero stands at (0, 0, N) takes a ‘M’ command, his coordinates will be (0, 1, N).
Input (can be hard coded or input from keyboard):
Each hero gets two lines of input instructions. The first line gives the hero’s current position, and
the second line is a series of instructions telling the hero how to explore the map.
All heroes will perform instructions sequentially, this means that first hero will move first, then
second. The second hero won't start to move until the first hero has finished moving.

Output:
The output for each hero should be its final coordinates and direction.
Given the map size X and Y, starting coordinates, direction and exploration path for two heroes:
5 5 (This is the map size)
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM
Output and new coordinates:
1 3 N
5 1 E
Please use ruby to implement a program with similar input like above and generate the correct
output.
