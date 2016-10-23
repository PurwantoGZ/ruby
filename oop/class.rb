#!/usr/bin/ruby
class Box
	@@size=0
  #Constructor
  def initialize(w,h)
  	@width, @height = w,h
  	@@size=w*h
  end
  def set_width=(value)
  	@width=value
  end
  def set_height=(value)
  	@height=value
  end
  
  #Instance Method and private accesor methods
  def print_width
  	@width
  end
  def print_height
  	@height
  end

  #make them private
  private :print_height,:print_width

  #instance method to print area
  def print_area
  	@area=print_height*print_width
  	puts "Big box are is : #{@area}"
  end

  #make it protected
  protected :print_area

  #instance method by default it is public
  def get_area
  	print_width*print_height
  end

  #The to_s Method
  def to_s
  	"(w:#{@width},h:#{@height})"
  end

  #Self Method
  def self.print_size
  	puts "Size of box is #{@@size}"
  end
end

def create_object
	box=Box.new(10,20)
	box.set_height=40
	box.set_width=50
	x=box.print_height
	y=box.print_width
	puts "Width of the box: #{y}"
	puts "Height of the box: #{x}"
	Box.print_size
	puts "String representasi of box : #{box}"

end

#create_object
def access_control
	box=Box.new(20,10)

	#call instance method
	a=box.get_area
	puts "Area of the box is : #{a}"

	#try to call protected or methods
	box.print_area
end

#access_control
#access_control


#Range As Condition

