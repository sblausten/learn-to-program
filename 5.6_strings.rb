
=begin 
Full name greeting. Write a program that asks for a person’s first
name, then middle, and then last. Finally, it should greet the person using
theirfull name.
=end

puts "First name:"
first = gets.chomp
puts "Middle name:"
middle = gets.chomp
puts "Last name:"
last = gets.chomp

puts "Hi " + first + " " + middle + " "  + last


=begin
Bigger, better favorite number. Write a program that asks for a person’s
favorite number. Have your program add 1 to the number, and then suggest the
result as a bigger and better favorite number. (Do be tactful about it,
though.) 
=end

puts "Favorite number:"
num = gets.chomp.to_i
num += 1
puts "Sure, but how about #{num}?"
