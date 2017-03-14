require ('minitest/autorun')
require ('minitest/rg')
require_relative('../bus')

class TestBus < MiniTest::Test

  def setup
   @number_22 = Bus.new(22, "Ocean Terminal") 
  end


  def test_drive
    assert_equal("Brum Brum", @number_22.drive())
  end

end