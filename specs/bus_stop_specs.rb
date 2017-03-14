require ('minitest/autorun')
require ('minitest/rg')
require_relative('../person')
require_relative('../bus')
require_relative('../bus_stop')

class TestBusStop < MiniTest::Test

  def setup
    @gyle = BusStop.new("The Gyle")
    @James = Person.new("James", 25)
    @Caroline = Person.new("Caroline", 21)
    @number_22 = Bus.new(22, "Ocean Terminal") 
  end
  
  def test_add_person_to_queue
    @gyle.add_person_to_queue(@James)
    assert_equal(true, @gyle.queue.include?(@James))
  end

  def test_pick_up_all_passengers
    
    assert_equal()
  end



end