puts "Say something to your Granny:"
words = gets.chomp

bye = 1

while bye < 3
	if words != words.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		puts "Say something to your Granny:"
		words = gets.chomp
	elsif (words == "BYE") && (bye < 3)
		bye += 1
		puts "Say something to your Granny:"
		words = gets.chomp
	elsif words == words.upcase
		puts "NO, NOT SINCE #{rand(1930..1950)}!"
		puts "Say something to your Granny:"
		words = gets.chomp
	end
end

