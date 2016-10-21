#!/usr/bin/ruby
time=Time.new

/puts "Current Time: #{time.inspect}"
puts time.year
puts time.month
puts time.day
puts time.wday
puts time.yday
puts time.hour
puts time.min
puts time.sec
puts time.usec
puts time.zone
/
values=time.to_a
puts values
puts Time.utc(*values)

puts "-----Arithmetic Datetime------"
now=Time.now
puts now
past=now-10
puts past
future=now+10
puts future

diff=future-now
puts diff