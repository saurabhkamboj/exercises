=begin
  Breakdown
    - Implement octal to decimal conversion.
    - Decimal is a base 10 system (10**n-1).
    - Octal is a base 8 system (8**n-1).

    - Invalid input will be treated as octal 0.
    - Number containing digits greater than 7
      are invalid octal numbers.
    - Built in or library methods for conversion
      cannot be used.

  Examples
    - An `Octal` class has to be created.
      - The constructor method of the class
        takes a string as an argument.
    - The `Octal` class has one instance method `#to_decimal`
      - The instance method returns an integer object.
      - Integer object with the value 0 is returned
        when the given octal number is invalid.

  Data structures
    - Input => A string object is passed as an argument
      to the constructor.
    - Output => Integer object is returned by `#to_decimal`

  Algorithm
    Constructor
    - Take a string as an argument.
    - Pass the given string as an argument to a
      helper method to convert it string chars to
      integer digits.
    - Assign the return value to an instance variable.

    Helper method `#string_to_integer_digits`
    - Take a string as an argument.
    - Assign an array of string digits '0' to '7' to
      to a local variable `digits`.
    - Return 0 if the string contains any character
      other than digits '0' to '7'.
    - Iterate over each char of the given string
      - On iteration return the value of digits.index(char)

    `#to_decimal`
    - Initialise `number` and assign it 0
    - Iterate over each digit in @digits, on each iteration
      - number = number * 8 + current_element
    - Return number
=end

class Octal
  def initialize(string)
    @digits = string_to_integer_digits(string)
  end

  def to_decimal
    number = 0

    @digits.each { number = number * 8 + _1 }
    number
  end

  private

  def string_to_integer_digits(string)
    octal_digits = ('0'..'7').to_a.freeze
    string_digits = string.chars

    # can also use `if string.match?(/[^0-7]/)`
    return [0] unless string_digits.all? { octal_digits.include?(_1) }
    string_digits.map { octal_digits.index(_1) }
  end
end
