

def bottles?(number)
	bottles_left = number 
	while bottles_left > 0
		puts "#{bottles_left} bottles on the wall.\nOne fell off so #{bottles_left - 1} bottles of beer on the wall."
		bottles_left -= 1
	end		

end


bottles?(3)
bottles?(20)