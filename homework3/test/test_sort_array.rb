require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'sort_array'))

class TestEvenOddDesc < MiniTest::Unit::TestCase
  def test_with_negative
    assert_equal [8, 0, -4, -6, 7, 7, 5, -1], even_odd_desc([-1, 8, -4, -6, 7, 7, 5, 0])
  end

  def test_with_positive
    assert_equal [8, 8, 6, 4, 0, 7, 5, 1], even_odd_desc([1, 8, 4, 6, 8, 7, 5, 0])
  end
end

class TestSortByLength < MiniTest::Unit::TestCase
  def test_string
    assert_equal ["git", "map", "count", "length"], sort_by_length(["length", "map", "git", "count"])
  end
end
