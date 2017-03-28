#Out of range error on line 10 - can't figure it out

puts "What year were you born in?"
year = gets.chomp

puts "What month were you born?"
month = gets.chomp

puts "What day were you born?"
day = gets.chomp

@birthday = Time.new(year, month, day)
puts "So your birthday is #{@birthday}. Lets celebrate all those birthdays!"

def celebrator
	#calculate how many birthdays they've had
	now = Time.now
	now_month = now.month
	now_day = now.day
	this_now = Time.new(2017,now_month,now_day)

	bd_month = @birthday.month
	bd_day = @birthday.day
	bd_now = Time.new(2017,bd_month,bd_day)

	if this_now > bd_now #hasn't yet had their birthday this year
		count = now.year - @birthday.year
		count -= 1
		puts count
		puts count.times {
			"Happy Birthday"
		}
	else # has already had birthday this year
		count = now.year - @birthday.year
		puts count
		puts count.times {
			"Happy Birthday"
		}
	end
end

celebrator

