#leap year counter

def calc (start_year, end_year)
	year = start_year
	while (year != end_year) && (year < end_year)
		if (year % 4 == 0 || year % 400 == 0) && year % 100 != 0 
			puts year
		end
		year += 1
	end
end	

calc(1983, 2005)