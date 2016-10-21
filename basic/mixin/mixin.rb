$LOAD_PATH<< '.'
require "man"
require "woman"

class Mixin
  include Man
  include Woman
  def beda
   	puts "sangat beda"
   end 
end

mixin_1=Mixin.new
mixin_1.rokok
mixin_1.gagah
mixin_1.lembut
mixin_1.sopan
mixin_1.beda