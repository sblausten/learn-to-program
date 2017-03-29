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
class Old_numerals
	def initialize(integer)
		@integer = integer
		letter_counter
	end

	def letter_counter
		remaining = @integer
		if remaining/1000 >= 1
			m = (remaining/1000).floor
			remaining %= 1000 
		end
		if remaining/500 >= 1
			d = (remaining/500).floor 
			remaining %= 500 
		end
		if remaining/100 >= 1
			c = (remaining/100).floor 
			remaining %= 100 
		end
		if remaining/50 >= 1
			l = (remaining/50).floor 
			remaining %= 50
		end
		if remaining/10 >= 1
			x = (remaining/10).floor 
			remaining %= 10 
		end
		if remaining/5 >= 1
			v = (remaining/5).floor 
			remaining %= 5
		end
		if remaining/1 >= 1
			i = (remaining/1).floor 
			remaining %= 1 
		end

		letters = Hash.new(0)
		letters = {
			m: m,
			d: d,
			c: c,
			l: l,
			x: x,
			v: v,
			i: i
		}
		#puts "Int =" + @integer.to_s
		#puts letters
		#numeral_constructor(letters)
	end

	def numeral_constructor letters
		numeral = ""
		if letters[:m] > 0 || letters[:m] != nil
			numeral << "M" * letters[:m] 
		end
		if letters[:d] > 0 || letters[:d] != nil
			numeral << "D" * letters[:d]
		end
		if letters[:l] > 0 || letters[:l] != nil
			numeral << "L" * letters[:l]
		end
		if letters[:x] > 0 || letters[:x] != nil
			numeral << "X" * letters[:x]
		end
		if letters[:v] > 0 || letters[:v] != nil
			numeral << "V" * letters[:v]
		end
		if letters[:i] > 0 || letters[:i] != nil
			numeral << "I" * letters[:i]
		end

		puts "#{@integer}" + " --> " + "#{numeral}"
		
	end
end

6.times{Old_numerals.new(rand(3000))}

