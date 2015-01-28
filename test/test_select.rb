require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'select'))

class TestSelect < MiniTest::Unit::TestCase
  def test_one_suitable
    assert_equal [2], select([1, 2, 3]) { |e| e % 2 == 0 }
  end

  def test_all_suitable
    assert_equal ['adsqw', 'qwwer', 'scvc'], select(['adsqw', 'qwwer', 'scvc']) { |e| e.length > 3 }
  end
end
