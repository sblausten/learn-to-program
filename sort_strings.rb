=begin
def sort array
	length = array.length
	array_index = 0
	length.times {
		current_string = array[array_index]
		next_string = array[array_index += 1]
		if current_string > next_string
			array[array_index += 1].rotate!
		end
		array_index += 1
	}
	p array
end
=end

def sort array
	length = array.length
	array_index = 0
	array.each { |string|
		puts string
		array_index += 1
		next_string = array[array_index]
		if string > next_string
			array[array_index].shift
		end
	}
	p array
end


eg = %w[Sam Hannah Ben dad rose Harry]
sort(eg)

=begin
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

=end

