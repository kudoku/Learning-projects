# carlos_conways_game_of_life.rb

# Tasks:
# 01. Display a Matrix of 10 x 10
# 02. Insert random elements into the Matrix (any single digit) and display it
# 03. Ask if user wants a new random matrix and display if user said yes
# 04. Generate a Matrix of max(30) x max(100), based on user input
#     With values only being ' ' and '0'
# 05. Test is cells are alive or not (' ' is dead and '0' is alive)
# 06. Apply Rules of Conways game of life - Part 1
#   Count living cells surrounding each element in matrix
# 07. Apply Rules of Conways game of life - Part 2
#   Create new matrix with rules applied, display it and iterate it for 10 times
#   Rules:
#     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
#     Any live cell with two or three live neighbours lives on to the next generation.
#     Any live cell with more than three live neighbours dies, as if by overcrowding.
#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


# Extra 01. Use n iterations
# Extra 02. Fix menus and presentation
# Extra 03. Let user decide what percentage of board to fill with 'O' at the beggining.
# Extra 04. Move classes to files of their own



require 'pry-debugger'

class Matrix 

  VALUES = ['O', ' ']
  POSITIONS_TO_TEST = [
    [-1,-1], [-1, 0], [-1, 1], # Top Row
    [ 0,-1], [ 0, 0], [ 0, 1], # Middle Row
    [ 1,-1], [ 1, 0], [ 1, 1]  # Bottom Row
  ]

  def initialize(rows, columns)

    @rows = self.validate_size(rows, 30)
    @columns = self.validate_size(columns, 100)
    @current_board = [] # Initialize just to know we will use this variable
    @living_cell_count_data = [] # Initialize updated matrix to display new iterations iterations
  end

  def validate_size(size_param, max_value)
    if size_param > max_value
      max_value
    elsif size_param < 10
      10
    else 
      size_param
    end
  end

  def is_cell_alive?(x,y)
    if @current_board[x] && @current_board[x][y]
      @current_board[x][y] == 'O' ? true : false 
    else
      false
    end
  end

  def count_surrounding_living_cells
    @living_cell_count_data = [] # Initialize updated matrix to display new iterations iterations
    (0..@rows-1).each do |row_number|
      new_row = []  
      (0..@columns-1).each do |column_number|
        surrounding_living_cells = 0
        # Iterating through each cell, so now we have to check the surrounding ones 
        for adjecent_position in POSITIONS_TO_TEST
          # Get the row coordinate adjacent to the cell we are testing
          row_to_test = row_number + adjecent_position.first 
          # Get the column coordinate adjacent to the cell we are testing
          column_to_test = column_number + adjecent_position.last

          # If the row is out of bounds, then there is nothing to test
          next if self.index_out_of_bounds?(row_to_test, @rows-1)
          # If the column is out of bounds, then there is nothing to test
          next if self.index_out_of_bounds?(column_to_test, @columns-1)
          # We need to check adjacent cells only so it needs to be skipped
          next if adjecent_position.first == 0 && adjecent_position.last == 0 ||
                  row_number == row_to_test && column_number == column_to_test

          # binding.pry
          # This is the adjacent cell's coordinates row_to_test, column_to_test
          # Test if the adjacent cell is alive and if so, add to the count of
          # surrounding cells that are alive
          surrounding_living_cells += 1 if self.is_cell_alive?(row_to_test, column_to_test)
        end
        # This is the count of the living cells stored in the same tested cell
        new_row << surrounding_living_cells 
        # print surrounding_living_cells
      end
      @living_cell_count_data << new_row # Once the new row is completed added to the updated_matrix_data
      puts ""
    end
  end

  #     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
  #     Any live cell with two or three live neighbours lives on to the next generation.
  #     Any live cell with more than three live neighbours dies, as if by overcrowding.
  #     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
  def apply_rules_of_life_to_updated_matrix_data
    # binding.pry
    old_matrix = @current_board.clone
    @living_cell_count_data.each_with_index do |row, row_number|
      row.each_with_index.each_with_index do |surrounding_living_cells_count, column_number|
        if @current_board[row_number][column_number] == 'O' # A live cell
          case @living_cell_count_data[row_number][column_number]
            when 0..1
              @current_board[row_number][column_number] = ' ' # Dies of under population
            when 2..3 
              @current_board[row_number][column_number] = 'O' # Lives on to the next generation
            else
              @current_board[row_number][column_number] = ' ' # Dies of over population
          end
        else # A dead cell
          # if surrounded by 3 living cells becomes alive by reproduction
          @current_board[row_number][column_number] = 'O' if @living_cell_count_data[row_number][column_number] == 3
        end
      end
    end
    
    # binding.pry
  end

  def index_out_of_bounds?(position, upper_bound)
    return (position < 0 || position > upper_bound)
  end

  def test_current_cells
    puts ''
    puts "TEST TEST TEST TEST TEST TEST TEST"
    (0..@rows-1).each do |row_number|
      (0..@columns-1).each do |column_number|
        print self.is_cell_alive?(row_number,column_number) ? 'T' : 'F'
      end
      puts ''
    end
    puts ''
  end

  def fill_with_data
    # srand(333)
    @current_board = []
    (1..@rows).each do |row_number|
      new_row = []
      (1..@columns).each do |column_number|
        new_row << VALUES[rand(2)] # Random of 0 or 1
      end
      @current_board << new_row
    end
  end

  def display
    @current_board.each do |row| 
      row.each do |column|
        print column
      end 
      puts ""
    end
  end
end

class Menu
  def clear_screen
    system("clear")
    # print "\e[2J\e[f" # A more hardcore way to clear the screen
  end

  def display
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    puts "Creating a Random Matrix of n x N"
    puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  end

  def get_dimensions
    print 'Please enter the number of rows: '
    rows = gets.chomp.to_i
    print 'Please enter the number of columns: '
    columns = gets.chomp.to_i
    return [rows, columns]
  end

  def get_iterations
    print 'Please enter the number of iterations: '
    iterations = gets.chomp.to_i
  end

  def prompt
    puts 'Would you like another one?'
    print '(y/n) :'
    answer = gets.chomp().to_s.downcase
    return answer
  end
end 

the_menu = Menu.new
loop do
  the_menu.clear_screen
  sleep(0.1)
  the_menu.display

  dimensions = the_menu.get_dimensions
  
  my_matrix = Matrix.new(dimensions.first, dimensions.last)
  my_matrix.fill_with_data
  iterations = the_menu.get_iterations
  (0..iterations-1).each do |iteration| 
    the_menu.clear_screen
    sleep(0.1)
    the_menu.display

    my_matrix.display
    binding.pry if iteration > 50
    my_matrix.count_surrounding_living_cells
    my_matrix.apply_rules_of_life_to_updated_matrix_data
    sleep(0.1)
  end
  # my_matrix.test_current_cells
  loop do
    retry_answer = the_menu.prompt
    if retry_answer == 'y'
      break
    elsif retry_answer == 'n'
      exit
    end
  end
end
