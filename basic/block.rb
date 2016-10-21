puts "----yield Statement----"
def yield_test
	puts "Didalam method"
	yield
	puts "Didalam method lagi."
	yield
end
yield_test {puts "Didalam Block"}

puts "\n\n----Yield parameters-----"
def test_yield
	yield 5
	puts "You re in method test"
	yield 100
end

test_yield {|i| puts "Didalam block #{i}"}

puts "\n Block dan Method"
def block_test(&block)
	block.call
end
block_test{puts "Welcome, Pur"}

puts "\n Block BEGIN and END"

BEGIN{
	puts "Block Begin"
}
END{
	puts "Block END"
}
puts "Main Block"