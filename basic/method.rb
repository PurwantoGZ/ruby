#!/usr/bin/ruby
def test(a1="Ruby",a2="Perl")
	puts "The Programming language is #{a1}"
	puts "The Programming language is #{a2}"
end
test "C","C++"
test

puts "--------METHOD RETURN VALUE---------"
def test1
	i=100
	j=200
	k=300
	return i,j,k
end
var=test1
puts var

puts "----VARIABLE NUMBER OF PARAMETER----"
def sample(*abc)
	puts "The number of parameter is #{abc.length}"
	abc.each do |i|
		puts "The parameter are -#{i}"
	end
end

sample "Zara", "6","Great Method"
sample "Budi","3.14","M","MCA"

puts "----------METHOD IN CLASS---------"
class Accounts
	def reading_charge
		puts "Hello, Dunia"
	end
	def Accounts.return_date
		puts "Saya,Purwanto"
	end
end

Accounts.return_date