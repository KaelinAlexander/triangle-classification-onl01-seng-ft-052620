class Triangle
attr_accessor :len1, :len2, :len3, :type

  def initialize(len1, len2, len3)
    @len1 = len1
    @len2 = len2
    @len3 = len3
  end

  def kind
    if len1 <= 0 || len2 <= 0 || len3 <= 0
      raise TriangleError
    elsif len1 + len2 <= len3
      raise TriangleError
    elsif len1 + len3 <= len2
      raise TriangleError
    elsif len2 + len3 <= len1    
      raise TriangleError
    else
      if len1 == len2 && len2 == len3
        :equilateral
      elsif len2 == len3 && len1 != len2
        :isosceles
      elsif len1 == len3 && len1 != len2
        :isosceles
      elsif len1 == len2 && len1 != len3
        :isosceles
      else len1 != len2 && len1!= len3 && len2 != len3
        :scalene
      end
    end 
  end
  
  class TriangleError < StandardError
  
  end 

end 
