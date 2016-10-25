#! /usr/bin/ruby -w

#Define c class 
class Box
  #constructor
  def initialize(w,h)
  	@width, @height = w,h
  end
  

  #instance Method
  def get_area
  	@width*@height
  end

  #Getter and Setter Method
  def get_width
  	@width
  end

  def get_height
  	@height
  end

  def set_width=(value)
  	@width=value
  end

  def set_height=(value)
  	@height=value
  end

  #Define + to do vector addition
  def +(other)
    Box.new(@width+other.width,@height+other.height)	
  end

  #Define unary minus to negate width and height
  def -@
  	Box.new(-@width,-@height)
  end

  #Define to perform scalar multiplication
  def *(scalar)
  	Box.new(@width*scalar,@height*scalar)
  end
end

#Define a subclass
class BigBox<Box
  
  #add anew instance method
  BOX_COMPANY="TATA Inc"
  BOXWEIGHT=10
  def print_area
  	@area=@width*@height
  	puts "Big box area is : #{@area}"
  end

  def get_area
  	@area=@width*@height
  	puts "Big box area is : #{@area}"
  end
end

#Create an Object
#box=BigBox.new(10,20)
#box.print_area
#box.get_area


#Freezing Objects

#create an Object

#kotak=Box.new(20,10)

#Let us Freez this object

#kotak.freeze
#if (kotak.frozen?)
#	puts "Kotak Object is frozen object"
#else
#	puts "Box object is normal object"
#end


#now try using setter methods

#kotak.set_width=30
#kotak.set_height=40

#use accessor mthods

#x=kotak.get_width
#y=kotak.get_height

#puts "width of the box is : #{x}"
#puts "height of the box is : #{y}"
#kubus=BigBox
#puts kubus::BOX_COMPANY

class Butuh
  puts "Type of self = #{self.type}"
  puts "Name of self = #{self.name}"
end

