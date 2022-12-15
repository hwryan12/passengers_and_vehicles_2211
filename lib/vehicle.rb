class Vehicle
  attr_reader :year, 
              :make, 
              :model,
              :passengers
  
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
    @num_adults = 0
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(occupant)
    @passengers << occupant
  end

  def num_adults
    @passengers.select do |passenger|
      if passenger.adult? == true
        @num_adults += 1
      end
    end
    @num_adults 
  end
end