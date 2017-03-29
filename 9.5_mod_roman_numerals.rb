=begin
“Modern” Roman numerals. Eventually, someone thought it would be terribly
clever if putting a smaller number before a larger one meant you
had to subtract the smaller one. As a result of this development, you must
now suffer. Rewrite your previous method to return the new-style Roman
numerals so when someone calls roman_numeral 4, it should return 'IV'.

IV	4 = 5 - 1
IX	9 = 10 - 1
XL	40 = 50 - 10
XC	90 = 100 - 10
CD	400 = 500 - 100
CM	900 = 100 - 100

=end

def mod_numerals(int)

	#find number of possible subtractors
	m = int / 1000
	c = int % 1000 / 100
	x = int %100 / 10
	i = int %10 / 1


	numeral = ""
	numeral << "M" * m
	if c == 9
		numeral << "CM"
	elsif c == 4
		numeral << "CD"
	else 
		numeral << 'D' * (int %1000 / 500)
		numeral << 'C' * (int %500 / 100)
	end

	if x == 9
		numeral << "XC"
	elsif x == 4
		numeral << "XL"
	else 
		numeral << 'D' * (int %100 / 50)
		numeral << 'X' * (int %50 / 10)
	end

	if i == 9
		numeral << "IX"
	elsif i == 4
		numeral << "IV"
	else 
		numeral << 'V' * (int %50 / 10)
		numeral << 'I' * (int %10 / 1)
	end
	
	puts numeral
end

mod_numerals(4)
mod_numerals(2154)
mod_numerals(9)

