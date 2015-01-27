require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'sum_2_max_square'))

class TestSum2MaxSquare < MiniTest::Unit::TestCase
  def test_sum_2_max_square
    assert_equal 5, sum_2_max_square_v1(-1, 2, -3)
    assert_equal 5, sum_2_max_square_v2(-1, 2, -3)
    assert_equal 5, sum_2_max_square_v3(-1, 2, -3)
    assert_equal sum_2_max_square_v1(1, 1, 1), sum_2_max_square_v2(1, 1, 1)
    assert_equal sum_2_max_square_v2(1, 1, 1), sum_2_max_square_v3(1, 1, 1)
    assert_equal sum_2_max_square_v1(15, 25 ,10), sum_2_max_square_v2(15, 25 ,10)
    assert_equal sum_2_max_square_v2(15, 25 ,10), sum_2_max_square_v3(15, 25 ,10)
  end
end