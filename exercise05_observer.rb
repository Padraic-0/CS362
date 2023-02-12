# Padraic Bergin
# Exercise 5: Observer Pattern

class WeatherStation

  attr_accessor :temperature

  def initialize
    @temperature = 0
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def temperature=(new_temperature)
    @temperature = new_temperature
    @observers.each do |o|
      o.notify(self)
    end
  end

end

# Define a StationObserver class
# A StationObserver should have one
# method named notify.

class StationObserver
  def notify(ws)
    puts ws.temperature
  end
end

weather_station = WeatherStation.new
#Add a new observer to the weather station
weather_station.add_observer(StationObserver.new)
weather_station.add_observer(StationObserver.new)
weather_station.add_observer(StationObserver.new)
weather_station.add_observer(StationObserver.new)
weather_station.add_observer(StationObserver.new)
weather_station.add_observer(StationObserver.new)
weather_station.temperature = 72
weather_station.temperature = -42