ary=[1,2,3,4,5]
ary.each do |i|
	puts i
end

a=[1,2,3,4,5,6]
b=Array.new
b=a.collect { |e|e  }
puts b