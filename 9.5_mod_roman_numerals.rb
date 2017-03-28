=begin
“Modern” Roman numerals. Eventually, someone thought it would be terribly
clever if putting a smaller number before a larger one meant you
had to subtract the smaller one. As a result of this development, you must
now suffer. Rewrite your previous method to return the new-style Roman
numerals so when someone calls roman_numeral 4, it should return 'IV'.
=end

def roman_converter number
	numeral = ""
	pnumber = number

	unless number <= 3000
		puts "Please enter a number below 3000."
	end

	if number / 1000 >= 1
		nm = number / 1000
		nm.floor
		nm.times {numeral += "M"}
		number %= 1000
	end
	if number / 500 >= 1
		nd = number / 500
		nd.floor
		nd.times {numeral += "D"}
		number %= 500
	end
	if number / 100 >= 1
		nc = number / 100
		nc.floor
		nc.times {numeral += "C"}
		number %= 100
	end
	if number / 50 >= 1
		nl = number / 50
		nl.floor
		nl.times {numeral += "L"}
		number %= 50
	end
	if number / 10 >= 1
		nx = number / 10
		nx.floor
		nx.times {numeral += "X"}
		number %= 10
	end
	if number / 5 >= 1
		nv = number / 5
		nv.floor
		nv.times {numeral += "V"}
		number %= 5
	end
	if number / 1 >= 1
		ni = number / 1
		ni.floor
		ni.times {numeral += "I"}
		number %= 1
	end
	
numeral.reverse!
	
puts "#{pnumber}" + " --> " + "#{numeral}"
end

6.times{roman_converter(rand(3000))}




