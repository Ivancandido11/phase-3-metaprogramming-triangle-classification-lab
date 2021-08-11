require "pry"
class Triangle
  attr_accessor :a, :b, :c

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
    @sides_arr = [@a, @b, @c]
  end

  def kind 
    if @sides_arr.all? { |side| side > 0 } && @a + @b > @c && @a + @c > @b && @b + @c > @a
      if @sides_arr.uniq.length == 1
        :equilateral
      elsif @sides_arr.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
   
  end
end
