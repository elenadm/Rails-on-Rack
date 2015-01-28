require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'count'))

class TestCount < MiniTest::Unit::TestCase
  def test_one_suitable
    assert_equal 1, count([1, 2, 3]) { |e| e%2 == 0 }
  end

  def test_none_suitable
    assert_equal 0, count(['adsqw', 'qwwer', 'scvc']) { |e| e.length > 8 }
  end
end
