=begin

10.2 

What strikes me as probably the easiest way to do this is to keep two more
lists around: one will be our list of already-sorted words, and the other will discuss
be our list of still-unsorted words. We’ll take our list of words, find the
“smallest” word (that is, the word that would come first in the dictionary),
and stick it at the end of the already-sorted list. All of the other words go into
the still-unsorted list. Then you do the same thing again but using the stillunsorted
list instead of your original list: find the smallest word, move it to
the sorted list, and move the rest to the unsorted list. Keep going until your
still-unsorted list is empty.


downcase all strings
go through array first time comparing first value with next until the end
if current value is greater than next swap them
repeat until no swaps are made in a pass through of the array
=end


def sort array

	return array if array.length <= 0
	ref = array.pop
	lower = array.select {|x| x <= ref}
	greater = array.select {|x| x > ref}

	sort(lower) + [ref] + sort(greater)
end

array = %w[f b d a c e b]
puts sort(array)

=begin

def sort(array)
	array.each {|string| string.downcase!} #so capitals down mess up dictionary sort
	length = (array.length - 1) #so when getting next value we gon't go over end of array
	ind = 0
	swap = false
	length.times {
		current_string = array[ind]
		next_string = array[ind + 1]
		if current_string > next_string
			array[ind], array[ind + 1] = array[ind + 1], array[ind]
			swap = true
		end
		ind += 1
	}
	array

end
=end



