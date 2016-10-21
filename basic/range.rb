range1=(1..10).to_a
range2=('ba'..'bz').to_a

puts "#{range1}"
puts "#{range2}"

#Assume a range
digits =0..9
ret=digits.min
puts "Min value is #{ret}"

ret=digits.max
puts "Max value is #{ret}"

ret=digits.reject {|i| i<5}
puts "rejected values are #{ret}"

digits.each do |digit|
	puts "In loop #{digit}"
end

puts "-------Range as Condition--------"

score=12
result=case score
when 0..40 then "fail"
	
when 41..60 then "Pass"
	
else "Invalid"
	
end
puts result

puts "--------Range as Intervals--------"
if ((1..10)===5)
	puts "5 lies in (1..10)"
end
if (('a'..'j')==='c')
	puts "c lies in (a..j)"
end
if (('a'..'j')==='z')
	puts "z lies in (a..j)"
end