require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it('returns false if it is not a triangle') do
       test_triangle = Triangle.new(2,3,9)
       expect(test_triangle.triangle?()).to(eq(false))
    end
    it('returns true if it is a triangle') do
      test_triangle = Triangle.new(2,3,4)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end

  describe('#equilateral?') do
    it('returns true if all sides are equal') do
      test_triangle = Triangle.new(3,3,3)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe ('#isosceles?')do
    it ("returns true if any two sides of are equal") do
      test_triangle = Triangle.new(2,3,3)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

  describe ('#isosceles?')do
    it ("returns false if equilateral") do
      test_triangle = Triangle.new(3,3,3)
      expect(test_triangle.isosceles?()).to(eq(false))
    end
  end

  describe('#scalene?') do
    it ("returns true if any two sides are different") do
      test_triangle = Triangle.new(2,3,4)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end

end
