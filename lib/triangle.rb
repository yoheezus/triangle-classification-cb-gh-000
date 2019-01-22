class Triangle
  # write code here
  attr_accessor :all_sides

  def initialize(side_1, side_2, side_3)
      @all_sides = []
      @all_sides << side_1
      @all_sides << side_2
      @all_sides << side_3
  end

  def kind
      if @all_sides.include?(0) || (@all_sides[0] + @all_sides[1]) < @all_sides[2]
              raise TriangleError
      else
          if @all_sides.uniq.length == 1
              :equilateral
          elsif @all_sides.uniq.length == 2
              :isosceles
          else
              :scalene
          end
      end
  end


  class TriangleError < StandardError
      def message
          puts "This is not a valid Triangle!"
      end
  end
end
