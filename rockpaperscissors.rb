choices = ['rock', 'paper', 'scissors']			#choices

player_choice = gets.chomp.downcase				#player input
comp_choice = choices.sample(1)					#random computer input
score = 0
play = true

# def winner()
# 	return "You win"
# 	score + 1
# end


# def loser()
# 	return "You lose"
# end

# def score_keeping score
# end
	



# while 
# 	puts "You have won #{score} times."
# 	puts "Do you want to keep playing? (Y/N)"
# 	play_answer = gets.chomp.downcase
# 	if play_answer == 'y'
# 		break
# 	elsif play_answer == 'n'
# 		play = false
# 	end
		


	
	puts "Rock, Paper, or Scissors?"
	player_choice
	comp_choice				
	
	

		if player_choice == comp_choice					
			puts "Tie"

		elsif player_choice == 'rock'					
			if comp_choice == 'paper'
				puts loser()
			else 
				puts winner()
			end

		elsif player_choice == 'paper'
			if comp_choice == 'scissors'
				puts loser()
			else
				puts winner()
			end

		elsif player_choice == 'scissors'
			if comp_choice == 'rock'
				puts loser()
			else
				puts winner()
			end
		else
			puts "Not a valid answer, please try again."
			end
		end

			











