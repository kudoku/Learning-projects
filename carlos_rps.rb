# Rock paper scissors

choices         = %w[rock paper scissors] # an array of the options
player_choice   = nil
computer_choice = nil

puts 'Welcome to Rock Paper Scissors'
puts '1. Rock'
puts '2. Paper'
puts '3. Scissors'
puts 'Make your choice:'
player_choice = gets().to_i - 1 # Get the option and adjust to 0-index
computer_choice = rand(3)
puts ''
puts "The computer chose #{choices[computer_choice]}!"


# If the computer chose ROCK and player chose SCISSORS
if computer_choice == 0 && player_choice == 2
  puts 'You lose! ha-ha!'
# If the computer chose PAPER and player chose ROCK
elsif computer_choice == 1 && player_choice == 0
  puts 'You lose! ha-ha!'
# If the computer chose SCISSORS and player chose PAPER
elsif computer_choice == 2 && player_choice == 1
  puts 'You lose! ha-ha!'
# Same choice is a tie
elsif computer_choice == player_choice
  puts 'You have tied'
# All other options player wins!
else
  puts 'You win!'
end
