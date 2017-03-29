=begin 
Old-school Roman numerals. In the early days of Roman numerals, the
Romans didn’t bother with any of this new-fangled subtraction “IX”
nonsense. No sir, it was straight addition, biggest to littlest—so 9 was
written “VIIII,” and so on. Write a method that when passed an integer
between 1 and 3000 (or so) returns a string containing the proper oldschool
Roman numeral. In other words, old_roman_numeral 4 should return
'IIII'. Make sure to test your method on a bunch of different numbers. Hint:
Use the integer division and modulus methods on page 32.
For reference, these are the values of the letters used:
I = 1 V = 5 X = 10 L = 50
C = 100 D = 500 M = 1000
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




