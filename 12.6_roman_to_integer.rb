

def roman_to_int(numeral)
	
	values = {	'i' => 1,
				'v' => 5,
				'x' => 10,
				'l' => 50,
				'c' => 100,
				'd' => 500,
				'm' => 1000
			 }

	total = 0
	prev = 0
	numeral.reverse.each_char {
		|char| 
		c = char.downcase
		int = values[c]
		unless int
			puts "not a valid roman numeral!"
			exit
		end
		if int < prev
			int *= -1 #make int negative so it subtracts from previous
		else
			prev = int
		end
		total += int
	}

	puts total
end

roman_to_int("MMCXIV")
roman_to_int("IV")
roman_to_int("MIV")
