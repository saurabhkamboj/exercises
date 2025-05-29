# Write a class that will display:

# ABC
# xyz

# when the following code is run:

class Transform
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def uppercase
    self.input.upcase
  end

  def self.lowercase(input)
    input.downcase
  end
end

# Alternate

class Transform
  def initialize(data)
    @data = data
  end

  def uppercase
    @data.upcase
  end

  def self.lwercase(string)
    string.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')
