class Life
	def menu
		puts "Generate new board? y/n"
		user_answer = gets.chomp.downcase
		puts "Define board dimensions: x coord followed by the y."
		@boardx = gets.chomp.to_i
		@boardy = gets.chomp.to_i
		matrix(@boardx, @boardy)
	end



	def matrix(boardx, boardy)
		#generate array populated with 0, 1
		board = Array.new(@boardx) {Array.new(@boardy) {rand(2)}}
		board.each do |r|
		  puts r.map { |p| p }.join(" ")
		end

		board_result = board

		# x = cell_index
		# y = row_index
		living = 0

		
		#collumn indexing
		board.each_with_index do |row, row_index|
			#row indexing
			row.each_with_index do |cell, cell_index|
				puts "Row: #{row_index} column: #{cell_index} Value:#{cell}"
				# rules(cell)
				puts "*************************"
				puts "#This is the specified value{board[row_index-1] [cell_index]}"
				puts "*************************"
				# puts "#{board[row_index]}"
				board[row_index-1] [cell_index]
				rules

			end
		end
	end

	def rules
		living = 0 
		puts living
	end
end

l = Life.new
l.menu


