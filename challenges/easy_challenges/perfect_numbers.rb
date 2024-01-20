=begin
  Breakdown
    - Identify which category a number belongs to
      based on the sum of its positive divisors known
      as the Aliquot sum (excluding the number itself).
    - Perfect number: equal to the original number
    - Abundant number: greater than the original number.
    - Deficient number: less than the original number.

    - The numbers given will be natural numbers.
      They are all the numbers from 1 to infinity.
    - Consider positive divisors only.

  Examples
    - A `PerfectNumber` class has to be created.
    - The class has one class method `classify`
      - It takes an integer object as an argument.
      - The method raises an `ArgumentError` if a
        negative number is passed in as an argument.

  Data structures
    - Input => Class method takes an integer object.
    - Output => A string object containing the type
      of number as value based on the Aliquot sum.

  Algorithm
    `classify` class method
    - Take an integer as an argument, assign it to `input` parameter.
    - Raise an `ArgumentError` if `input` is less than 1.
    - case`#aliquot_sum(input)`
      - when 15 then `perfect`
      - when (1...15) then 'deficient`
      - else `abundant`

    Helper method to calculate `aliquot_sum`
    - Iterate from 1 to number - 1, on each iteration
      - Select the current element if number % element == 0
      - Return the sum of all selected elements.
=end

class PerfectNumber
  def self.classify(input)
    raise ArgumentError.new if input < 1

    case aliquot_sum(input)
    when input then 'perfect'
    when (1...input) then 'deficient'
    else
      'abundant'
    end
  end

  class << self
    private

    def aliquot_sum(input)
      (1...input).select { input % _1 == 0 }.sum
    end
  end
end
