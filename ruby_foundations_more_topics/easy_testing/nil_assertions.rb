require 'minitest/autorun'

class NilAssertion < Minitest::Test
  def test_nil
    value = nil
    assert_nil(value)
  end
end
