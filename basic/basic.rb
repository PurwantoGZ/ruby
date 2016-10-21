#!/usr/bin/ruby

puts 'escape using"\\"'
puts 'That\`s Right'

puts "Multiple Value : #{24*2*10}"

puts "-----Array------"
ary=["Fred",10,3.14,"this is a string","Last item"]
ary.each do |i|
	puts i
end

puts "-----HASH-------"
hsh=colors={"red"=>0xf00,"green"=>0x0f0,"blue"=>0xf00}
hsh.each do |key,value|
	print key," is ",value,"\n"
end

puts "------Ruby Range------"
(10...15).each do |n|
	print n,' '
end





