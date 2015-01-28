require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'local_max'))

class TestLocalMax < MiniTest::Unit::TestCase
  def test_none_suitable
    assert_equal [], local_max([1, 2, 3, 4, 5])
  end

  def test_one_suitable
    assert_equal [3], local_max([1, 2, 3, 1, 2])
  end

  def test_several_suitable
    assert_equal [2, 3], local_max([1, 2, 1, 3, 2])
  end
end
