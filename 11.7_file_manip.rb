
Dir.chdir('C:/users/sam/documents')

pic_names = Dir["C:/**/*.emp"]

puts "What would you like to call this batch?"
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

pic_number = 0

#progresss bar
print pic_names.each {
	|name| 
	unless File.exist?(name)
		print '.'
		new_name = "#{batch_name}#{pic_number}.jpg"
		File.rename name, new_name
		pic_number += 1
	end	
}

puts "done!"
