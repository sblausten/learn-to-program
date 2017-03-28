@sentence = []

puts "Type as many words as you want pressing enter after each one"
puts "to exit enter a blank line"

def input
	word = gets.chomp
	if word == ""
		puts @sentence.sort
		exit
	else
		@sentence.push(word)
		input
	end
end

input


