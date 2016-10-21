#!/usr/bin/ruby

$i=0
$num=5
puts "-------WHILE DO--------"
while $i<$num do
	puts "Inside the loop i=#{$i}"
	$i+=1	
end

$i=0
puts "-------DO WHILE--------"
begin
	puts "Inside the loop i=#{$i}"
	$i+=1
end while $i<$num

puts "--------UNTIL----------"
$i=0
until $i>$num do
	puts "Inside loop i-#{$i}"
	$i+=1	
end

puts "---------REPEAT UNTIL----"
$i=0
begin
	puts "Inside loop i-#{$i}"
	$i+=1
end until $i>$num

puts "-------FOR--------"
for i in 0..5
	puts "Value of local variable is #{i}"
end 

puts "--------EACH----------"
(0..5).each do |i|
	puts "Nilai i-#{i}"
end