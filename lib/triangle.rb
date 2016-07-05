require('pry')

class Triangle
  define_method(:initialize) do |side_1, side_2, side_3|
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  define_method(:triangle?) do
    if @side_1.+(@side_2).<=(@side_3) || @side_1.+(@side_3).<=(@side_2) || @side_3.+(@side_2).<=(@side_1)
      false
    else
      true
    end
  end
  define_method(:equilateral?) do
    @side_1 == @side_2 && @side_2 == @side_3
  end

  define_method(:isosceles?) do
    !self.equilateral?() && (@side_1 == @side_2 || @side_2 == @side_3 || @side_3 == @side_1)
  end

  define_method (:scalene?) do
    @side_1 != @side_2 && @side_1 != @side_3 && @side_2 != @side_3
  end

end
