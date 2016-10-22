class Box
  def initialize(w,h)
  	@width, @height = w,h
  end
  def set_width=(value)
  	@width=value
  end
  def set_height=(value)
  	@height=value
  end
  def print_width
  	@width
  end
  def print_height
  	@height
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
end

create_object