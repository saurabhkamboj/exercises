require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text_swap'

class TestMethod < Minitest::Test
  def setup
    @file = File.open('sample_text.txt')
  end

  def test_swap
    swapped_text = Text.new(@file.read).swap('a', 'e')

    refute swapped_text.include? 'a'
  end

  def test_word_count
    text = Text.new(@file.read)
    assert_equal 72, text.word_count
  end

  def teardown
    @file.close
  end
end
