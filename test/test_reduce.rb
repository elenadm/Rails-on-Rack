require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'reduce'))

class TestSelect < MiniTest::Unit::TestCase
  def test_sum_with_condition
    assert_equal 10, reduce([1, 6, 2, 4], 0) { |sum, n| n > 3 ? sum + n : sum }
  end

  def test_product_range
    assert_equal 360, reduce((3..6), 1) { |product, n| product * n }
  end
end
