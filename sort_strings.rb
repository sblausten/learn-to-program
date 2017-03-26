


def sort some_array 
# This "wraps" recursive_sort.
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	sorted_array = []
	
	unsorted_array.each {|x| 
		sort_value = x <=> x
		if sort_value == 1
			sorted_array.push(x)
		elsif sort_value == 0
			sorted_array.push(y)
		elsif sort_value == -1
			sorted_array.push(y)
		end
		
	}

p sorted_array

end



eg = %w(Sam Hannah Ben dad rose Harry)
sort(eg)
