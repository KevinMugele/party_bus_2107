#pry(main)> require './lib/bus'
#=> true

#pry(main)> bus = Bus.new('Mikes Awesome Bus', 4)
#=> #<Bus:0x00007fed7c11dbd8 @capacity=4, @name="Mikes Awesome Bus", @passengers=[]>

#pry(main)> bus.name
#=> "Mikes Awesome Bus"

#pry(main)> bus.capacity
#=> 4

#pry(main)> bus.passengers
#=> []

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
