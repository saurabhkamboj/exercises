# Write a minitest assertion that will fail if the Array list is not empty.

require 'minitest/autorun'

class EmptyObjectAssertion < Minitest::Test
  def test_empty_object
    list = []
    assert_empty list, "The list is not empty!"
  end
end

# Alternate
assert_equal true, list.empty?
