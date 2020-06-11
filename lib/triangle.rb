class Triangle
attr_accessor :len1, :len2, :len3, :type

  def initialize(len1, len2, len3)
    @len1 = len1
    @len2 = len2
    @len3 = len3
  end

  def kind
    if len1 == len2 == len3
      :equilateral
    elsif len2 == len3 && len1 != len2
      :isosceles
    elsif len1 == len3 && len1 != len2
      :isosceles
    elsif len1 == len2 && len1 != len3
      :isosceles
    elsif len1 != len2 != len3
      :scalene
  end

end 
