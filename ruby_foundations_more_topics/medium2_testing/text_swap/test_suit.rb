require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text_swap'

class TestMethod < Minitest::Test
  def setup
    @file = File.open('sample_text.txt')
    @text = Text.new(@file.read)
  end

  def test_swap
    swapped_text = @text.swap('a', 'e')

    refute swapped_text.include? 'a'
  end

  def test_word_count
    assert_equal 72, @text.word_count
  end

  def teardown
    @file.close
  end
end
