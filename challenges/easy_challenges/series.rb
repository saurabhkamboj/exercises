=begin
  Breakdown
    - Return an array of consecutive number series.
    - "0123", 3-digit series => [012, 123, 234]
    - If a 6-series digit is asked for a 5-series
      string, throw an error.

  Examples
    - A `Series` class has to be created.
      - The class has a Constructor that takes
        an string object as an argument.
    - The class has an instance method `slices`
      - `slices` takes an integer object as an argument.
      - It return an array of sub-arrays that contains
        integer ojects as elements.
      - It raises an ArgumentError if
        a wrong argument is passed.

  Data structures
    - array = ['0', '1', '2', '3', '4']
    - [['0', '1', '2']] => array[0, 3]
    - Only iterate till 0..array_length - series_length

  Algorithm
    Constructor
    - Assign string.chars to `@digits`

    `slices`
    - Assign the argument to `series_length`
    - raise ArgumentError if `series_length > @digits.length`

    - Iterate from (0..@digits_length - series_length)
      - Assign the element on each iteration to index
      - Return elements index to series_length in @digits
        - Convert each element in the array to an integer.
=end

class Series
  def initialize(string)
    @digits = string.chars
  end

  def slices(series_length)
    raise ArgumentError if series_length > @digits.length

    (0..(@digits.length - series_length)).map do |index|
      @digits[index, series_length].map(&:to_i)
    end
  end
end

# Alternate
class Series
  def initialize(string)
    @digits = string.chars
  end

  def slices(series_length)
    raise ArgumentError if series_length > @digits.length

    @digits.map(&:to_i).each_cons(series_length).to_a
  end
end
