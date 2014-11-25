#Reverse string without #reverse

string = ("asdf")

# puts string[0]
# puts string[-1]


def reverse_string string
	index = 0
	k = index - 1

	while index <= (string.length/2) do
		string[index], string[k] = string[k], string[index]
		index+=1
		k-=1
	end
	return string	
end

def palindrome_check string
	string == string.reverse
end




=begin
	get string
	break down string to array
	pop each element in array 
	put element 1 by 1 in new array
	make array into a string
 
	
=end