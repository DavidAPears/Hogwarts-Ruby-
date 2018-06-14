require("minitest/autorun")
require_relative("../house")
require("minitest/rg")

class TestHouse < MiniTest::Test

  def setup
    options = {"house_name" => "gryffindor"}

    @house = House.new(options)
  end

  def test_house_name()
    result = @house.house_name()
    assert_equal("gryffindor", result)
  end


end
