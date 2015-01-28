require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'all'))

class TestAll < MiniTest::Unit::TestCase
  def test_false_not_all
    assert_equal false, all?([1, 4, 3]) { |e| e%2 == 0 }
  end

  def test_false_all
    assert_equal false, all?([1, 5, 3]) { |e| e%2 == 0 }
  end

  def test_true_not_all
    assert_equal false, all?(['adsqw', 'qwwer', 'scvc']) { |e| e.length >= 5 }
  end

  def test_true_all
    assert_equal true, all?(['adsqw', 'qwwr', 'scvc']) { |e| e.length >= 4 }
  end
end
