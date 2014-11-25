#calculator menu, user enters desired operation
#enters 2 numbers
#calculates
#returns value

#bonus keep value for next calc or new one



def calc_menu
	# menu_answer = gets.chomp
	puts "Calculator menu: enter your desired option (1-5):\n
	1. Addition\n
	2. Subtraction\n
	3. Multiplication\n
	4. Division\n
	5. Quit"
	menu_answer = gets.chomp
	while true

		if menu_answer == '1'
			addition
		elsif menu_answer == '2'
			subtraction
		elsif menu_answer == '3'
			multiplication
		elsif menu_answer == '4'
			division
		elsif menu_answer == '5'
			puts "Goodbye"
			exit
		else
			puts "That is not a valid option, only enter 1, 2, 3, 4, or 5."
		end
	end
end




def addition
	puts "Enter the first number you wish to add"
	add_input = gets.chomp
	puts "Enter the second number you wish to add"
	add_input2 = gets.chomp

	add = add_input.to_i + add_input2.to_i
	puts "The result is: #{add}"

	calc_menu
end

def subtraction
	puts "Enter the first number you wish to subtract"
	sub_input = gets.chomp
	puts "Enter the second number you wish to subtract"
	sub_input2 = gets.chomp

	sub = sub_input.to_i - sub_input2.to_i
	puts "The result is: #{sub}"
	calc_menu
end

def multiplication
	puts "Enter the first number you wish to multiply"
	mult_input = gets.chomp
	puts "Enter the second number you wish to multiply"
	mult_input2 = gets.chomp

	mult = mult_input.to_i * mult_input2.to_i
	puts "The result is: #{mult}"
	calc_menu
end

def division
	puts "Enter the first number you wish to divide"
	div_input = gets.chomp
	puts "Enter the second number you wish to divide"
	div_input2 = gets.chomp

	div = div_input.to_f / div_input2.to_f
	puts "The result is: #{div}"
	calc_menu
end
