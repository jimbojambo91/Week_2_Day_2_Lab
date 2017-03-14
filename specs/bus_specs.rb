require ('minitest/autorun')
require ('minitest/rg')
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class TestBus < MiniTest::Test

  def setup
    @James = Person.new("James", 25)
    @Caroline = Person.new("Caroline", 21)
    @number_22 = Bus.new(22, "Ocean Terminal")
    @gyle = BusStop.new("The Gyle") 
    
  end


  def test_drive
    assert_equal("Brum Brum", @number_22.drive())
  end

  def test_passenger_num
    assert_equal(0, @number_22.passenger_num())
  end

  def test_add_passenger
    @number_22.add_passenger(@James)
    assert_equal(1, @number_22.passenger_num())
  end

  def test_drop_off_passenger
    @number_22.add_passenger(@James)
    @number_22.drop_off_passenger(@James)
    assert_equal(0, @number_22.passenger_num())
  end

  def test_empty_bus
    @number_22.add_passenger(@James)
    @number_22.add_passenger(@Caroline)
    @number_22.empty_bus()
    assert_equal(0, @number_22.passenger_num())
  end

  def test_pick_up_all_passengers
    @gyle.add_person_to_queue(@James)
    @gyle.add_person_to_queue(@Caroline)
    @number_22.pick_up_passengers_from_bus_stop(@gyle)
    assert_equal(0, @gyle.queue.length)
  end

end