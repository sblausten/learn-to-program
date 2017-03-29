=begin Orange tree. Make an OrangeTree class that has a height method that
returns its height and a one_year_passes method that, when called, ages the
tree one year.

Each year the tree grows taller (however much you think an orange tree should
grow in a year), and after some number of years (again, your call) the tree
should die.

For the first few years, it should not produce fruit, but after a while it
should, and I guess that older trees produce more each year than younger
trees…whatever you think makes the most sense.

And, of course, you should be able to count_the_oranges (which returns the
number of oranges on the tree) and pick_an_orange (which reduces the
@orange_count by 1 and returns a string telling you how delicious the orange
was, or else it just tells you that there are no more oranges to pick this
year).

Make sure any oranges you don’t pick one year fall off before the next year.
=end

class OrangeTree
	def initialize
		@height = 1
		@age = 0
		@fruit = 0
	end

	def one_year_passes
		@height += 3
		@age += 1
		if @age == 20
			puts "Tree died."
			exit
		end
		puts "One year passed"
		fruit_production
	end

	def fruit_production
		if @age > 5
			@fruit = (@age*0.7).round(0)
			count_oranges
		end
	end

	def count_oranges
		puts "Fruit produced = #{@fruit}"
		
	end

	def pick_oranges
		@fruit -= 1
		puts "Fruit picked. #{@fruit} left."
	end
end

tree = OrangeTree.new
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.pick_oranges
