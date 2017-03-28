

puts "What's your new playlist called?"
playlist = gets.chomp.downcase

unless Dir.exist?(playlist) 
	Dir.mkdir(playlist)
end

Dir.chdir('C:/users/sam/music/#{playlist}')

tracks = Dir['C:/users/sam/**/*.wma']
tracks.shuffle!(random: Random.new(1))

print "Moving #{tracks.length} files:  "

track_count = 1

print tracks.each {
	|old_name| 	
	unless track_count == 100
		new_name = "secret_track#{track_count}.wma"
		File.rename old_name, new_name
		track_count += 1
	end
}

puts
puts "Finished!"
