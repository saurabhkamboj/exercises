=begin
  Breakdown
    - Number of differences between 2 DNS strands is hamming distance.
    - It is defined on sequences of equal distance.
    - For unequal sequences calculate distance till shorters length.

  Problem
    - Get the shorter strand
    - Compare till values of shorter strand
    - Return total differences
=end

class DNA
  def initialize(string)
    @sequence = string
  end

  def hamming_distance(other_string)
    shorter_sequence = @sequence.size <= other_string.size ? @sequence : other_string
    total_differences = 0

    shorter_sequence.each_char.with_index do |char, index|
      (total_differences += 1) if @sequence[index] != other_string[index]
    end

    total_differences
  end
end
