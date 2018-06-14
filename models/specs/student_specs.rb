require("minitest/autorun")
require_relative("../student")
require("minitest/rg")

class TestStudent < MiniTest::Test

  def setup
    options = {"id" => 1, "first_name" => "Harry", "last_name" => "Potter",
      "house" => "gryffindor", "age" => 14}

    @student = Student.new(options)
  end

  def test_first_name()
    result = @student.first_name()
    assert_equal("Harry", result)
  end

  def test_last_name()
    result = @student.last_name()
    assert_equal("Potter", result)
  end

  def test_house()
    result = @student.house()
    assert_equal("gryffindor", result)
  end

  def test_age()
    result = @student.age()
    assert_equal(14, result)
  end
#
#   def test_pretty_name()
#     result = @pizza_order.pretty_name()
#     assert_equal("Walter White", result)
#   end
#
#   def test_total()
#     result = @pizza_order.total()
#     assert_equal(50, result)
#   end
#
end
