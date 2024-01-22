=begin
  Breakdown
    - A natural number & set of numbers will be given.
    - Find the sum of all multiples of numbers in the
      given set that are less than the natural number.
    - Consider all numbers upto but not including the
      natural numbers.
    - Use 3 & 5 if a set of natural numbers is not given.
    - The sum of uniq multiples of set of numbers.

  Examples
    - A `SumOfMultiples` class has to be created.
      - The constructor takes an array of numbers as an argument.
    - It contains a `to` class method.
      - Which takes a natural number as an argument.
    - It also contains a `#to` instance method.
      - Which too takes a  natural number as an argument.
    - None of the methods raise any errors or test for
      the validity for the type of numbers.

  Data structures
    - If the natural number is 20 and no set of
      numbers is provided, therefore the default set
      to consider is [3, 5].
    - Find the sum of each multiple of 3 and 5 upto
      1 to 20 but including 20.

  Algorithm
    Constructor
    - Assign the input to `*numbers`
    - Assign `numbers` to `@number_set`

    `to` instance method
    - Assign the argument to `natural_number`
    - Call `to` class method on `class`
      - Pass `natural_number` & `numbers` as arguments.

    `to` class method
    - Assign the argument to `natural_number`
    - Assign a default value of [3, 5] to `number_set`
    - Iterate over `number_set` using `#map`
      - Assign each current element to `number1`
      - Iterate over (1...natural_number) using `#inject`
      - Assign each current element to `number2`
      - Add to accumulator if `number2` % `number1` == 0
    - Return the sum of the array returned.
    - * Used `#select` instead given we only add uniq nums.
=end

class SumOfMultiples
  def initialize(*numbers)
    @number_set = numbers
  end

  def self.to(natural_number, number_set=[3, 5])
    (1...natural_number).select do |number|
      number_set.any? { number % _1 == 0 }
    end.sum
  end

  def to(natural_number)
    self.class.to(natural_number, @number_set)
  end
end
