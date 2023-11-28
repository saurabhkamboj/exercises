require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class BooleanTest < Minitest::Test
  def test_boolean
    value = 4
    assert(value.odd?, 'value is not odd')
  end
end

# Important points
#   Require 'minitest/autorun'.
#   Can require an optional minitest-reporters gem to make the test output pretty.
#   Define subclass of `Minitest::Test`.
#   In that subclass, atleast have one method.
#   The method name should begin with `test_`. If it does not (for eg; `testing_boolean`), it will be ignored.
