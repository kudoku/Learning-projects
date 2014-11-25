

class RPS

	# def initialize
	# @comp_score = 0
	# @player_score = 0
	# menu(player_score, comp_score)
	# end
	
	def comp
		puts "COMPUTER TURN"
		array = ['rock', 'paper', 'scissors']
		comp_choice = array.sample
		puts "3, 2, 1 ..."
		return comp_choice.to_s
	end

	def player
		puts "PLAYER TURN"
		puts "Please enter rock, paper, or scissors."
		player_choice = gets.chomp.downcase
		return player_choice
	end

	#rule comparisons between comp/player
	def rules (player_choice, comp_choice, comp_score, player_score)
		puts "Player: #{player_choice}"
		puts "Computer: #{comp_choice}"
		if player_choice == comp_choice
			puts "Tie"
			comp_score+=1
			player_score+=1
			menu(player_score, comp_score)
		elsif player_choice == 'rock'
			if comp_choice == 'paper'
				puts "Comp wins"
				comp_score+=1
				menu(player_score, comp_score)
			else
				puts "Player wins"
				player_score+=1
				menu(player_score, comp_score)
			end
		elsif player_choice == 'paper'
			if comp_choice == 'scissors'
				puts "Comp wins"
				comp_score+=1
				menu(player_score, comp_score)
			else 
				puts "Player wins"
				player_score+=1
				menu(player_score, comp_score)
			end
		elsif player_choice == 'scissors'
			if comp_choice == 'rock'
				puts "Comp wins"
				comp_score+=1
				menu(player_score, comp_score)
			else 
				puts "Player wins"
				player_score+=1
				menu(player_score, comp_score)
			end
		else 
			puts "Not a valid choice."
			menu(player_score, comp_score)
		end
	end

	# When game starts, user will be presented with a menu prompt asking for input. Input should be saved as a var.
	#loop to repeat game - conditional loop
	def menu(player_score, comp_score)
		
		while true
		puts"**********************"
		puts "Comp Score = #{comp_score}\nPlayer Score = #{player_score}"
		puts"**********************"
		puts "You get one point for every win. Would you like to play? y/n "
		menu_answer = gets.chomp.downcase
			if menu_answer == 'y'
				rules(comp, player, comp_score, player_score)
				puts comp_score
				puts player_score
			elsif menu_answer == 'n'
				puts "Goodbye!"
				#false
				# break
				exit
			else 
				puts "Please enter either 'Y' or 'N'."
			end
		end
	end
end



game = RPS.new
game.menu(0, 0)













# def player
# 	puts "Please enter rock, paper, or scissors."
# 	player_choice = gets.chomp.downcase
# 	return player_choice
# end

# # Once player enters choice, computer should randomly roll, and compare with player to see winner
# def comp
# 	array = ['rock', 'paper', 'scissors']
# 	comp_choice = array.sample(1)
# 	puts "3, 2, 1 ... #{comp_choice}"
# 	return comp_choice.to_s
# end


# #rule comparisons between comp/player
# class Rules 
# 	def initialize(player, comp)
# 		@cc = comp_choice
# 		@pc = player_choice
# 	end

# 	if @pc == @cc
# 		puts "Tie"
# 	elsif @pc == 'rock'
# 		if @cc == 'paper'
# 			puts "Comp wins"
# 		else
# 			puts "Player wins"
# 		end
# 	elsif @pc == 'paper'
# 		if @cc == 'scissors'
# 			puts "Comp wins"
# 		else 
# 			puts "Player wins"
# 		end
# 	elsif pc == 'scissors'
# 		if @cc == 'rock'
# 			puts "Comp wins"
# 		else 
# 			puts "Player wins"
# 		end
# 	else 
# 		puts "Not a valid choice."
# 	end
# end

# new_game = Rules.new(comp, player)






# #loop while player wants to continue
# def menu_loop
# 	puts "Do you want to continue playing Rock Paper Scissors?"
# 	menu_answer = gets.chomp.downcase
# 	while menu_answer != 
# 	if menu_answer == 'y'

# 	elsif menu_answer == 'n'

# 	else
# 		puts "Not a valid answer"
# 	end





# rules('rock', 'rock')
# rules('rock', 'paper')
# rules('rock', 'scissors')
# rules('paper', 'rock')
# rules('paper', 'paper')
# rules('paper', 'scissors')
# rules('scissors', 'rock')
# rules('scissors', 'paper')
# rules('scissors', 'scissors')
