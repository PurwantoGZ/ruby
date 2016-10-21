MR_COUNT=0
module Foo
	MR_COUNT=0
	::MR_COUNT=1
	MR_COUNT=2
end

puts MR_COUNT
puts Foo::MR_COUNT

puts "----------SECOND EXAMPLE--------------"
CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST

puts "--------IF ELSE-----------"
x=3
if x>2
	puts "x is greather than 2"
elsif x<=2 and x!=0
	puts "x is 1"
else
	puts "I cant guess the number"
end

puts "----------if modifier-------"
$debug=0
print "debug\n" if $debug

puts "----------UNLESS-----------"
x=1
unless x>2 
	puts "x is less than 2"
else
	puts "x is greather than 2"
end

puts "-----UNLESS MODIFIER-------"
$var =1
print "1. --value is set\n" if $var
print "2. --value is set\n" unless $var>2

$var=false
print "3. --value is set\n" unless $var

puts "------------SWITCH CASE------------"
$age=13
case $age
when 0..2
	puts "Masih Bayi"
when 3..6
	puts "anak Kecil"
when 7..12
	puts "Anak-Anak"
else
	puts "Dewasa"
end