require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'fibonacci_numbers'))

class TestFibonacciNumbers < MiniTest::Unit::TestCase
  def test_fibonacci_numbers_0
    assert_equal 0, fibonacci_numbers_v1(0)
    assert_equal 0, fibonacci_numbers_v2(0)
  end

  def test_fibonacci_numbers_100
    assert_equal 354224848179261915075, fibonacci_numbers_v1(100)
    assert_equal 354224848179261915075, fibonacci_numbers_v2(100)
  end

  def test_fibonacci_numbers_10000
    assert_equal fibonacci_numbers_v1(10000), fibonacci_numbers_v2(10000)
  end
end
