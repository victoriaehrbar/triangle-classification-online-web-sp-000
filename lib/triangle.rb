class Triangle
  attr_reader :side_1, :side_2, :side_3
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
      validate_triangle
      if a == b && b == c
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles
      else
        :scalene
      end
    end

    def validate_triangle
      real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
      [a, b, c].each do |side|
        real_triangle << false if side <= 0
      raise TriangleError if real_triangle.include?(false)
      end
    end

    class TriangleError < StandardError
    end

  end
