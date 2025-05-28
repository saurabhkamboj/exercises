def triangle(s1, s2, s3)
  sides = [s1, s2, s3]

  case
  when 2 * sides.max >= sides.sum, sides.any?(0)
    :invalid
  when sides[0] == sides[1] && sides[1] == sides[2]
    :equilateral
  when sides[1..2].any? { |side| sides[0] == side }
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
