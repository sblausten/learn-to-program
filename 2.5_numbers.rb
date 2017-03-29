
# How many hours in a year?
hours = 365*24
puts "There are #{hours} hours in a year"
# How many minutes are in a decade?
minutes = 10*365*24*60
puts "There are #{minutes} minutes in a decade"
# How many seconds old are you?
birth = Time.new(1991, 4, 29, 19, 21, 11)
now = Time.now
age = (now - birth).round
puts "I am #{age} seconds old"
#If I am 1,160 million seconds old how old am I?


