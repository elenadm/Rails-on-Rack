require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'even_odd_desc'))

class TestEvenOddDesc < MiniTest::Unit::TestCase
  def test_with_negative
    assert_equal [8, 0, -4, -6, 7, 7, 5, -1], even_odd_desc([-1, 8, -4, -6, 7, 7, 5, 0])
  end

  def test_with_positive
    assert_equal [8, 8, 6, 4, 0, 7, 5, 1], even_odd_desc([1, 8, 4, 6, 8, 7, 5, 0])
  end
end
