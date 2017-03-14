class Bus



  def initialize(route_num, destination)
    @route_num = route_num
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum Brum"
  end

  def passenger_num
    return @passengers.length
  end

  def add_passenger(person)
    @passengers << person
  end

  def drop_off_passenger(person)
    @passengers.delete(person)
  end

  def empty_bus
    @passengers.clear
  end

  def pick_up_passengers_from_bus_stop(bus_stop)
    for passenger in bus_stop.queue
      add_passenger(passenger)
    end
    bus_stop.queue.clear

  end


end