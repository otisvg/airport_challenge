class Airport
  AIRPORT_CAPACITY = 3

  def initialize(name, capacity = AIRPORT_CAPACITY)
    @hangar = []
    @name = name
    @capacity = capacity
  end

  def airport_weather
    weather = ['sunny', 'sunny', 'sunny' 'sunny', 'sunny', 'sunny', 'stormy']
    randomize = rand(0..6)
    weather[randomize]
  end

  def land(plane)
    raise "You can't land. #{@name}'s hangar is full." unless @hangar.length < @capacity
    raise "You can't land yet. It's too stormy." if airport_weather == 'stormy'

    @hangar << plane
  end

  def depart(plane)
    raise "You can't depart yet. It's too stormy." if airport_weather == 'stormy'

    @hangar.delete(plane)
    "Plane #{plane} has left #{@name}"
  end
end
