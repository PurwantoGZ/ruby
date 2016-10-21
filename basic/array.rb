#!/usr/bin/ruby

names=Array.new(10)
puts names.size
puts names.length

a=Array.new(4,"Aku")
puts "#{a}"

b=Array.new(10) { |i| i=i*2 }
puts "#{b}"

c=Array.[](1,2,3,4,5)
puts "#{c}"

d=Array[1,2,3,4,5]
puts "#{d}"

e=Array(0..9)
puts "#{e}"

puts "-------Array Built in Methods-----"

num=e.at(6)
puts "#{num}"

ab=Array.new(4) { |i| i=i*2 }
ac=Array.new(4) { |i| i=i+2 }
hasil=ab-ac
puts "#{hasil}"
