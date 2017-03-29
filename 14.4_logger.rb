
def logger string, &block
  puts 'Beginning ' + string
  puts string + ' returns ' + block.call.to_s
end

logger 'outer block' do
  log 'test' do
    1 + 2
  end

  '0' == 0
end
