require 'minitest/autorun'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'flatten'))

class TestFlatten < MiniTest::Unit::TestCase
  def test_none_suitable
    assert_equal [1, 2, 3], flatten([1, 2, 3])
  end

  def test_one_suitable
    assert_equal [1, 2, 2, 3], flatten([1, 2, [2, 3]])
  end

  def test_many_suitable
    assert_equal [1, 2, 2, 3, 2], flatten([1, [2, [[2, 3], [2]]]])
  end
end
