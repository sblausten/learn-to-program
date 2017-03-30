=begin 
10.3
Shuffle. Now that you’ve finished your new sorting algorithm, how about
the opposite? Write a shuffle method that takes an array and returns a totally
shuffled version. As always, you’ll want to test it, but testing this
one is trickier: How can you test to make sure you are getting a perfect
shuffle? What would you even say a perfect shuffle would be? Now test
for it.
=end

def shuffle array
	
	arr.sort_by{rand}
end

puts(shuffle(%w[1 2 3 4 5 6 7 8 9 10]))
