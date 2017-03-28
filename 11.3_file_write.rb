
require 'yaml'

file = "testfile.txt"
array = ["Hello world blahblah", "sam", "ben", 1]
string = array.to_yaml

File.open file, 'w' do |f|
	f.write(string)
end

read_string = File.read file
read_array = YAML::load read_string

puts(read_string == string)
puts(read_array == array )


puts Dir.chdir("..")["a*.rb"]
          