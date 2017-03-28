=begin
	change working directory to destination
	extract files from source directory into array var
	get any string to add to new renamed/moved files
	tell user how many files in array you are moving/downloading
	set file counter to 0 for injection into new name
	print out each file name as you iterate through array renaming them
	(check if file already exists before writing)
	for each file assign new name using batch name and file number
	iterate file number counter		

=end




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
	unless File.exist?(name)  #make sure we don't overwrite files
		print '.'
		new_name = "#{batch_name}#{pic_number}.jpg"
		File.rename name, new_name
		pic_number += 1
	end	
}

puts "done!"
