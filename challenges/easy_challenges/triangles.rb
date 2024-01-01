# Write a program to determine whether a triangle is equilateral, isosceles, or scalene.

# An equilateral triangle has all three sides the same length.

# An isosceles triangle has exactly two sides of the same length.

# A scalene triangle has all sides of different lengths.

# Note: For a shape to be a triangle at all, all sides must be of length > 0, and the sum of the lengths of any two sides must be greater than the length of the third side.

=begin
  Breakdown
    - Determine the kind of triangle
    - For a shape to be a triagnle:
      - All sides must be length > 0
      - sum of two sides > third side
    - Input: 3 number arguments
    - Output: ArgumentError or kind

  Data structure
    - Sides => (3, 4, 4)
    - Check if all sides > 0 => sides.all? { _1 > 0 }
    - Check if two sides > third side => side.sort[0..1].sum > sides.max
    - Equilateral => sides.uniq.size == 1
    - Isosceles => sides.uniq.size == 2

  Problem
    - Check if sides are valid
    - Find the kind of triangle
    - Return the kind

  Algorithm
    - Constructor
      - Intialise an array with arguments passed as elements
      - Check if sides are legal?
        - sides.all? { _1 > 0 } && sides.sort[0..1].sum > sides.max

    - `#kind` instance method
      - return 'equilateral' if sides.uniq.size == 1
      - return 'isosceles' if sides.uniq.size == 2
      - 'scalene'
=end

class Triangle
  attr_reader :sides

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
    raise ArgumentError unless legal?
  end

  def legal?
    (sides.all? { _1 > 0 }) && (sides.sort[0..1].sum > sides.max)
  end

  def kind
    case sides.uniq.size
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    else
    'scalene'
    end
  end
end
