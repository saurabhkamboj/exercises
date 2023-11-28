# Write a minitest assertion that will fail if value.downcase does not return 'xyz'.

require 'minitest/autorun'

class EqualityTest < Minitest::Test
  def test_equality
    assert_equal('xyz', 'XYZ'.downcase)
  end
end
