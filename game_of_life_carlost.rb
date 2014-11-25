# Tasks:
# 01. Display a Matrix of 10 x 10
# 02. Insert random elements into the Matrix (any single digit) and display it
# 03. Ask if user wants a new random matrix and display if user said yes
# 04. Generate a Matrix of max(30) x max(100), based on user input
#     With values only being ' ' and '0'
# 05. Test if cells are alive or not (' ' is dead and '0' is alive)
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
class Life
	def menu
		puts "Generate new board? y/n"
		user_answer = gets.chomp.downcase
		puts "Define board dimensions: x coord followed by the y."
		@max_rowx = gets.chomp.to_i
		@max_columny = gets.chomp.to_i
		matrix
	end



	def matrix
		#generate array populated with 0, 1
		@board = Array.new(@max_rowx) {Array.new(@max_columny) {rand(2)}}
		@board.each do |r|
		  puts r.map { |p| p }.join(" ")
		end

		# @board_result = @board

		
		#collumn indexing
		@board.each_with_index do |row, y_index|
      
      puts "********************"
      
			#row indexing
			row.each_with_index do |cell, x_index|
				# puts "Row: #{row_index} column: #{cell_index} Value:#{cell}"
				# rules(cell)
				puts @board[y_index] [x_index]
        puts cell
        

			end
		end
	end


	# def rules(cell, row_index, cell_index, board_result)
	# 	#1 is alive, 0 is dead

	# 	x = cell_index
	# 	y = row_index
	# 	living = 0
	# 	#grid check on surrounding cells , count living cells
	# 	# (x-1 y+1)		(x y+1)		(x+1 y+1)
	# 	# (x-1 y)			(x y)			(x+1 y)
	# 	# (x-1 y-1)		(x y-1)		(x+1 y-1)
	# 	if board[x] [y] == 1 								#if current cell is alive rules
	# 		if board[(y+1)] [(x-1)] == 1
	# 			living+=

			
	# 		# elsif board[(y)] [(x-1)] == 1
	# 		# 	living+=
	# 		# elsif board[(y)] [(x-1)] == 1
	# 		# 	living+=
	# 		# elsif board[(y+1)] [(x)] == 1
	# 		# 	living+=
	# 		# elsif board[(y-1)] [(x)] == 1
	# 		# 	living+=
	# 		# elsif board[(y+1)] [(x+1)] == 1
	# 		# 	living+=
	# 		# elsif board[(y)] [(x+1)] == 1
	# 		# 	living+=
	# 		# elsif board[(y+1)] [(x+1)] == 1
	# 		# 	living+=
	# 		# end

	# 		# if living == 2 || 3 							#living check to decide if current cell lives or dies 
	# 		# 	board_result [x] [y]	= board [x] [y]
	# 		# else 
	# 		# 	board_result [x] [y] = 0
	# 		# end
				

	# 	elsif living == 3 																#if current cell is dead rules
	# 		board_result [x] [y] = 1
	# 	end

	# 	board_result.each do |r|
	#   	puts r.map { |p| p }.join(" ")
	# 	end

	# end




end

l = Life.new
l.menu





=begin
matrix = [[1,2,3],
          [4,5,6],
          [7,8,9]]

puts "Sample Matrix:"
# prints out the matrix in a nice format
matrix.each do |r|
  puts r.map { |p| p }.join(" ")
end

matrix.each_with_index do |row, row_index|
  row.each_with_index do |value, col_index|
    puts "The value #{value} is in row #{row_index}, column #{col_index}"
  end
end

puts matrix[1][1] # Returns the value of the cell at row 1, col 1 which is 5

	
=end

