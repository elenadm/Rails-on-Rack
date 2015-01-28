require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'map'))

class TestMap < MiniTest::Unit::TestCase
  def test_product
    assert_equal [15, 6, 18], map([5, 2, 6]) { |i| i*3 }
  end

  def test_sum_string
    assert_equal ["a!", "b!", "c!", "d!"], map(["a", "b", "c", "d"]) { |x| x + "!" }
  end
end
