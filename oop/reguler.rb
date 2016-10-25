#! /usr/bin/ruby -w
line1="There are Cats in myhome"
line2="Dogs also like meat"

if (line1=~ /Cats(.*)/)
	puts "Line 1 contains Cats"
end
if (line2=~ /Dogs(.*)/)
	puts "Iine2 contains Dogs"
end

phone="2004-959-559 #This is Phone Number"

#Delete Ruby style comments
phone=phone.sub!(/#.*$/,"")
puts "Phone Num : #{phone}"

#Remove anything other than digits
phone=phone.gsub!(/\D/,"")
puts "Phone Num : #{phone}"

text="rails are rails, really good Ruby on Rails"

#Change "rails" to "Rails throught"
text.gsub!("rails","Rails")

#Capitalize the word "Rails" throught
text.gsub!(/\brails\b/,"Rails")
puts "#{text}"

