require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'any'))

class TestAny < MiniTest::Unit::TestCase
  def test_false_one
    assert_equal true, any?([1, 4, 3]) { |e| e%2 == 0 }
  end

  def test_false_all
    assert_equal false, any?([1, 5, 3]) { |e| e%2 == 0 }
  end

  def test_false_empty_array
    assert_equal false, any?([]) { |e| e%2 == 0 }
  end

  def test_true_not_all
    assert_equal true, any?(['adsqw', 'qwwer', 'scvc']) { |e| e.length >= 5 }
  end

  def test_true_all
    assert_equal true, any?(['adsqw', 'qwwr', 'scvc']) { |e| e.length >= 4 }
  end
end
