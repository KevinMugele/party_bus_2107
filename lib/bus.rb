class Bus
  attr_reader :name, :capacity, :passengers
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(new_passenger)
    passengers << new_passenger
  end

  def yell_at_passengers
    passengers.map!(&:upcase)
  end

  def number_of_passengers
    @passengers.length
  end

  def over_capacity?
    if passengers.length > 4
      true
    else
      false
    end
  end

  def kick_out
    1.times do
      @passengers.shift
    end
  end
end
