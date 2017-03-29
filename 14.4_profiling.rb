
def profile desc, &block

	profiling = false

	if profiling
		start_time = Time.new
		block.call
		time = Time.new - start_time
		puts "#{desc} = #{time}"
	else

	block.call
	
	end
end

