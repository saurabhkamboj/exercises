def negative(int)
  int.to_s.include?('-') ? int : -int
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0

# int > 0 ? -int : int
# -int.abs
