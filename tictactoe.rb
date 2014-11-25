#initialize board and set up the 2 players and general rules/menu
#set up 1st player turn phase
#set up comp turn phase
#check winning conditions
#keep track of score and print



# define new board
def board_new
	
	@board1 = [1, 2, 3]
	@board2 = [4, 5, 6]
	@board3 = [7, 8, 9]
	@board_index = [@board1, @board2, @board3]


	puts "| #{@board_index [0] [0]} | #{@board_index [1] [0]} | #{@board_index [2] [0]} |"
	puts "| #{@board_index [0] [1]} | #{@board_index [1] [1]} | #{@board_index [2] [1]} |"
	puts "| #{@board_index [0] [2]} | #{@board_index [1] [2]} | #{@board_index [2] [2]} |"
	return @board_index
end



#player turn who goes first
#player choice 1-9
#loops that will fill the chosen array position with X
def player board_new
	puts "Player turn: \n
	Please Select a board option 1-9"
	answer_player = gets.chomp
	while true
		if answer_player == "1"
			# key = @board_index[0][0]
			# puts @board_index[0][0]
			# puts key
			trash = @board_index.at(0).at(0)
			delete_if(trash.include?(1))

			# delete.at(0).insert(0, "X")
			# @board_index.insert(key, "X")
			# @board_index.insert(0 0, "X")
			@board1
			

			puts "| #{@board_index [0] [0]} | #{@board_index [1] [0]} | #{@board_index [2] [0]} |"
			puts "| #{@board_index [0] [1]} | #{@board_index [1] [1]} | #{@board_index [2] [1]} |"
			puts "| #{@board_index [0] [2]} | #{@board_index [1] [2]} | #{@board_index [2] [2]} |"
			break
		elsif answer_player == "2"
		elsif answer_player == "3"
		elsif answer_player == "4"
		elsif answer_player == "5"
		elsif answer_player == "6"
		elsif answer_player == "7"
		elsif answer_player == "8"
		elsif answer_player == "9"	
		else 
			puts "That is not a valid option"
		end
	end




end

#pass in updated array
#comp will randomly choose empty array position and fill it with x
def comp
end


#loop player/comp until winning conditions are met. 
def menu
end

#winning conditions with 8?/ 16? winning conditions 
def win_condition
end