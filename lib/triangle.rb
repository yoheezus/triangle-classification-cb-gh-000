class Triangle
  # write code here
  attr_accessor :all_sides

  def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
  end

  def kind
      
  end

  def validate_tri
      valid = [(a + b > c), (a + c > b), (b + c > a)]
  end


  class TriangleError < StandardError
      def message
          puts "This is not a valid Triangle!"
      end
  end
end
