#nitialize board and set up the 2 players and general rules/menu
#set up 1st player turn phase
#set up comp turn phase
#check winning conditions
#keep track of score and print

# define new board
def board_new
	
#	@board1 = [1, 2, 3]
#	@board2 = [4, 5, 6]
#	@board3 = [7, 8, 9]
	@board_index = [[1,2,3],[4,5,6],[7,8,9]]
	
	board_display @board_index
	return @board_index
end


def board_display board_index
	puts "| #{@board_index [0] [0]} | #{@board_index [1] [0]} | #{@board_index [2] [0]} |"
	puts "| #{@board_index [0] [1]} | #{@board_index [1] [1]} | #{@board_index [2] [1]} |"
	puts "| #{@board_index [0] [2]} | #{@board_index [1] [2]} | #{@board_index [2] [2]} |"

end
#player turn who goes first
#player choice 1-9
#loops that will fill the chosen array position with X
def player x, player
        puts "You are "+ player + " using " + x
	puts "Please Select a board option 1-9"
	answer_player = gets.chomp
		if answer_player == "1"
		      @board_index[0][0]=x
		elsif answer_player == "2"
		      @board_index[0][1]=x
		elsif answer_player == "3"
		      @board_index[0][2]=x
		elsif answer_player == "4"
		      @board_index[1][0]=x
		elsif answer_player == "5"
		      @board_index[1][1]=x
		elsif answer_player == "6"
		      @board_index[1][2]=x
		elsif answer_player == "7"
		      @board_index[2][0]=x
		elsif answer_player == "8"
		      @board_index[2][1]=x
		elsif answer_player == "9"	
		      @board_index[2][2]=x
		else 
			puts "That is not a valid option"
		end

      board_display @board_index
end

#all 9 combination of winning
def isWon mark

   if (@board_index[0][0]==@board_index[1][0]) && (@board_index[0][0]==@board_index[2][0]) && (@board_index[2][0] == mark )
       return true
   elsif (@board_index[0][1]==@board_index[1][1]) && (@board_index[0][1]==@board_index[2][1]) && (@board_index[2][1] == mark )
       return true
   elsif (@board_index[0][2]==@board_index[1][2]) && (@board_index[1][2]==@board_index[2][2]) && (@board_index[2][2] == mark )
       return true
   elsif (@board_index[0][0]==@board_index[0][1]) && (@board_index[0][0]==@board_index[0][2]) && (@board_index[0][2] == mark )
       return true
   elsif (@board_index[1][0]==@board_index[1][1]) && (@board_index[1][1]==@board_index[1][2]) && (@board_index[1][2] == mark )
       return true
   elsif (@board_index[2][0]==@board_index[2][1]) && (@board_index[2][1]==@board_index[2][2]) && (@board_index[2][2] == mark )
       return true
   elsif (@board_index[0][0]==@board_index[1][1]) && (@board_index[0][0]==@board_index[2][2]) && (@board_index[2][2] == mark )
       return true
   elsif (@board_index[0][2]==@board_index[1][1]) && (@board_index[0][2]==@board_index[2][0]) && (@board_index[2][0] == mark )
       return true
   end
end

#player board_new

## one round is for 9 moves
# can add user break condition later..
player1_mark="X"
player2_mark="O"
#create new board
board=board_new
for i in 1..9
# player 1
   player player1_mark,"player1"
   if isWon player1_mark
       puts "Player1 won!"
       break
   end

# player 2
   player player2_mark, "player2"
   if isWon player2_mark
       puts "Player1 won!"
       break
   end
end
