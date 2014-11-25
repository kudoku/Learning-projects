array = ['rock', 'paper', 'scissors']
answer = gets.chomp.downcase
comp_answer = array.sample(array.length)

puts "Rock, Paper, or Scissors?"
answer



comp_answer

paper > rock
rock > scissors
scissors > paper

paper = paper || rock == rock || scissors == scissors
if answer == comp_answer
	puts "Tie goes to me!"
