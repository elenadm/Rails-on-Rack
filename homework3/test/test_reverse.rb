require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'reverse'))

class TestReverse < MiniTest::Unit::TestCase
  def test_numbers
    assert_equal [6, 2, 5], reverse([5, 2, 6])
  end

  def test_sum_string
    assert_equal ["a"], reverse(["a"])
  end
end
