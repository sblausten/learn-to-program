puts "What is your full name?"
name = gets.chomp
puts "There are" + name.slice(/\s/).length.to_s + "letters in your name"
puts "There are" + name.length.to_s + "characters though."
