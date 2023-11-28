require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# class BooleanTest < Minitest::Test
#   def test_boolean
#     value = 4
#     assert(value.odd?, 'value is not odd')
#   end
# end

# Important points
#   Require 'minitest/autorun'.
#   Can require an optional minitest-reporters gem to make the test output pretty.
#   Define subclass of `Minitest::Test`.
#   In that subclass, atleast have one method.
#   The method name should begin with `test_`. If it does not (for eg; `testing_boolean`), it will be ignored.

# Alternate

# `assert` tests whether the first argument is truthy (That is neither false or nil). If the argument is not truthy, the test fails and the second argument is displayed as the failure message. The message is frequently ommited since the error messages provided by default are usually sufficient.

# `assert` is mostly not used since it is more important to ensure an exact value is returned. Therefore `asset_equal` is more optimal to be used in this case to test if `true` is returned and not just a truthy value (a value that evaluates as true).

class BooleanTest < Minitest::Test
  def test_boolean
    value = 3
    assert_equal(true, value.odd?)
  end
end
