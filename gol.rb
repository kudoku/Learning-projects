=begin
set and display a matrix that iterates through a certain number of times

1. display a menu that sets the board x and y lengths and # of generations
2. create a board that uses these x and y and randomly fill with "on" "off"
3. display board
4. check current cell state 
5. check matrix border and determine if current cell lives or dies by checking neighbors
5. display next cell state
6. keep iterating through the generations until done
=end


class Board
  NEIGHBORS = [
    [-1,-1], [-1, 0], [-1, 1],
    [ 0,-1], [ 0, 0], [ 0, 1],
    [ 0,-1], [ 1, 0], [ 1, 1]]
  def initialize
    puts "Enter board dimensions # rows followed by columns"
    # answer_dimensions = gets.chomp.to_i
    # answer_dimensions.split(" ")
    # @max_x = answer_dimensions[0]
    # @max_y = answer_dimensions[1] 
    @max_x = gets.chomp.to_i
    @max_y = gets.chomp.to_i
    #x = row/array #
    #y = column/array value
    puts "Enter # of loops"
    # @generations = gets.chomp.to_i

    board_generate
  end

  def board_generate
    #generate board and display it to user
    srand(2)
    @board_current = Array.new(@max_x) {Array.new(@max_y) {rand(2)}}
    @board_next_state = @board_current
    @board_current.each do |row|
      puts row.map { |cell| cell }.join(" ")
    end

    current_cell_state
  end

  def current_cell_state
    #check each cell 
    @board_current.each_with_index do |array, x_index|
      array.each_with_index do |value, y_index|
        @x = x_index
        @y = y_index
        @cell = value
        puts "Row: #{@x} Column: #{@y} Cell: #{@cell}"
        cell_check
      end
    end
  end

    def cell_check
#       # @board_current [x] [y]
#       #check cell neighbors to determine current cell state
#       #   Rules:
# #     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
# #     Any live cell with two or three live neighbours lives on to the next generation.
# #     Any live cell with more than three live neighbours dies, as if by overcrowding.
# #     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
      
#       #alive
#       if @board_current [@x] && @board_current [@x][@y] && cell ==1 
#         neighbor_check
      

#       #dead
#       elsif @board_current [@x] && @board_current [@x][@y] && @cell == 0
#         neighbor_check
      
#       else
#         false
#       end
#     end

#     def neighbor_check
#       # @neighbor_count = []
#       # @neighbor_count.push(@board_current [@x] [@y]).push(@board_current [@x+1] [@y])
      

    end






end

b = Board.new
b
 



