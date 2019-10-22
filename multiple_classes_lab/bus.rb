class Bus

  attr_reader :route_no, :destination

  def initialize(route_no, destination, passengers)
    @route_no = route_no
    @destination = destination
    @passengers = []
  end

def drive()
  return "Brum! Brum!"
end

def number_of_passengers()
  return @passengers.length()
end

def pick_up(passenger1)
  @passengers.push(passenger1)
end

def drop_off(passenger)
  @passengers.delete(passenger)
end

def remove_all_passengers()
  @passengers.clear()
end

def pick_up_from_bus_stop(bus_stop)
  for person in bus_stop.queue()
    pick_up(person)
  end
  bus_stop.empty_queue()
  end

end
