# Write a minitest assertion that will fail if the 'xyz' is not in the Array list.

require 'minitest/autorun'

class IncludedObjectAssertion < Minitest::Test
  def test_included_object
    list = ['abc', 'xyz']
    assert_includes(list, 'xyz')
  end
end
