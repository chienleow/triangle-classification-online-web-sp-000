require 'pry'

class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def invalid_triangle
    if (s1||s2||s3) <= 0 || 
      # binding.pry
      raise TriangleError
    end
  end
  
  def kind
    invalid_triangle
    if s1 == s2 && s2 == s3
      :equilateral ## good
    elsif s2 == s3 || s1 == s3 || s1 == s2
      :isosceles ## good
    elsif !(s2 == s3 || s1 == s3 || s1 == s2)
    # binding.pry
      :scalene
    end
  end
  
  class TriangleError < StandardError
    
  end
  
end