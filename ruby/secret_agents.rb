# Encrypt
# We'll need a loop to run the number of letters in the password.
# We'll need a mehtod to advance each letter in the password forward by 1 letter.
# This method shoudld ignore space characters. 
# We'll need to ask for the string and length of the string.
#
# Decrypt
# We'll need a string for the entire alphabet, used for positioning of the decrypt.
# We use the alphabet string to locate the index number in the encoded message for the letter, then subtract 1 
# and return the correct letter.

# We need to check advance Z forward.

#$alphabet = "abcdefghijklmnopqrstuvwxyz"
#input_message
#message_length
$encoded_message = ""
$decoded_message = ""

#def input 
#	puts "Enter your highly classified password"
#	@input_message = gets.chomp 
#end


def encrypt 
	begin
	#input_message = a
	puts "Enter your highly classified password"
	input_message = gets.chomp 
	i = 0
	length = input_message.length
	until i == length do
	if input_message[i] == "z" 
		$encoded_message += "a"
	else $encoded_message += input_message[i].next
	end 
	i = i+=1
	end
	return $encoded_message
	end
end


#encrypt


def decrypt 
	begin
	#input_message = a
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	puts "Enter your encrypted highly classified password"
	c = gets.chomp 
	i = 0
	#puts c
	length = c.length
	until i == length do
	b = c[i]
	n = alphabet.index(b)
	$decoded_message += alphabet[n-1]
	i = i+=1
	end
	end
end

#decrypt()
#decrypt(encrypt("swordfish"))
#puts "Here is your encrypted highly classified password" 
#puts $encoded_message
#puts "Here is your decrypted highly classified password" 
#puts $decoded_message

puts "Hello, Agent. Would you like to encrypt(E) or decrypt(D) your password?"
input=gets.chomp
if input.downcase == "e" 
encrypt()
puts "Here is your encrypted highly classified password" 
puts $encoded_message
elsif input.downcase == "d" 
decrypt()
puts "Here is your decrypted highly classified password" 
puts $decoded_message
else
puts "Error, please restart"
end




