

def reverse
	str = gets.chomp
	array = str.split("")
	reversed_array = []
	puts array
	# while array.length > 0
	# 	rev_array = []
	# 	rev_array.push(array.pop)
	# end

	array.length.times do ||
		# popped_letter = array.pop
		# reversed_array.push(popped_letter)
		reversed_array << array.pop
	end
	puts reversed_array
	reversed_array.join

	
end

def reverse2
	str = gets.chomp
	array = str.split("")
	reversed_array = []

	array.length.collect do ||
		reversed_array << array.pop
	end
end

def capitalize
	array = ["a", "b", "c"]
	cap_array = []

	array.each do |letter|
		cap_array.push(array.pop.upcase)
		
	end
	puts cap_array
end