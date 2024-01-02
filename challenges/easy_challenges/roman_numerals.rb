# Problem => https://launchschool.com/exercises/117c3255

=begin
  Breakdown
    - Convert decimals into roman numbers.
    - Roman letters => I, V, X, L, C, D, M
      - I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000
      - A letter can only be repeated thrice.
      - Therefore, IV = 4 (5 - 1)
      - Letter to the left when substracting
      - Letter to the right when adding
    - Input => Integer
    - Output => String

  Data structure
    - 27, find all tens, hundreds and thousands
    - 27.digits.map.with_index { (_1.to_s + '0' * _2).to_i }.reverse
    - [20, 7], [1, 5, 10, 50, 100, 500, 1000]
=end

# Solution by Nick Perry
class RomanNumeral
  def initialize(number)
    self.number = number
  end

  ROMAN_NUMERALS = {
    "I" => 1,
    "IV" => 4,
    "V" => 5,
    "IX" => 9,
    "X" => 10,
    "XL" => 40,
    "L" => 50,
    "XC" => 90,
    "C" => 100,
    "CD" => 400,
    "D" => 500,
    "CM" => 900,
    "M" => 1000,
  }

  def to_roman
    roman_num = ''
    to_convert = number
    years = ROMAN_NUMERALS.values.sort { |a, b| b <=> a }

    years.each do |year|
      multiplier, remainder = to_convert.divmod(year)
      if multiplier > 0
        roman_letter = ROMAN_NUMERALS.key(year)
        roman_num << roman_letter * multiplier
      end
      to_convert = remainder
    end

    roman_num
  end

  private

  attr_accessor :number
end
