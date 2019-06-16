class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (self.side1 == 0) #|| (side2 <= 0) || (side3 <= 0) || (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif (side1 == side2) && (side2 == side3)
      :equilateral
    elsif ((side1 == side2) && (side2 != side3)) || ((side1 == side3) && (side1 != side2)) || ((side2 == side3) && (side2 != side1))
      :isosceles
    elsif (side1 != side2) && (side2 != side3) && (side1 != side3)
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Triangle is invalid. Boo!"
    end
  end

end
