require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'detect'))

class TestDetect < MiniTest::Unit::TestCase
  def test_one_suitable
    assert_equal 2, detect([1, 2, 3]) { |e| e % 2 == 0 }
  end

  def test_none_suitable
    assert_equal nil, detect((1..4)) { |e| e % 5 == 0 }
  end

  def test_all_suitable
    assert_equal 'adsqw', detect(['adsqw', 'qwwer', 'scvc']) { |e| e.length > 4 }
  end
end

