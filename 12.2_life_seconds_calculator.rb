
birth = Time.gm(1991,04, 29, 19, 06)
p birth

now = Time.new

life = (now - birth).round(2)

puts "My life has been #{life} seconds long!"

billion = birth + 1000000000000
puts "When I'm one billion seconds old it will be #{billion}."
