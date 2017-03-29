

def clock &block

  hour = Time.new.hour + 11

  hour % 12 + 1
  hour.times(&block)

end


clock { puts "ring" }

