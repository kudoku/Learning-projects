
class Encryptor
	def cipher_e
		{'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
		'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
		'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
		'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
		'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
		'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
		'y' => 'l', 'z' => 'm'}
	end


	def encrypt_letter(letter)
		letter_downcase = letter.downcase
		cipher_e[letter_downcase]
	end


	def encrypt_collect(input)
		array_string = input.split("")

		results_encrypt = array_string.collect do |letter|
            # puts "joon" 
            # puts letters
			encrypt_letter(letter)
		end
		results_encrypt = results_encrypt.join
	end


	def decrypt_collect(input_encrypted)
		array_string_decrypt = input_encrypted.split("")
		puts array_string_decrypt [0]

		results_decrypt = array_string_decrypt.collect do |letter|
			puts "joon"
			puts letter
			encrypt_letter(letter)
		end
		results_decrypt = results_decrypt.join
	end

    # def encrypt(string)
#   array_string = string.split("")
#   results = []

#   array_string.each do |letter| 
#       encrypted_letter = encrypt_letter(letter)
#       results.push(encrypted_letter)

#       # results << encrypt_letter(letter)
#       # encrypted_letter = encrypt_letter(letter)
#       # results.push(encrypted_letter)
#   end
# end  
end

e = Encryptor.new



#moddable cipher which will account for copher rotation type, 





