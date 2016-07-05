require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle?') do
    it('returns false if it is not a triangle') do
       test_triangle = Triangle.new(2,3,9)
       expect(test_triangle.triangle?()).to(eq(false))
    end
    it('returns true if it is not a triangle') do
      test_triangle = Triangle.new(2,3,4)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end
end
