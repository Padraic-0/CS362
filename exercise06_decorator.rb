#! /usr/bin/env ruby
# YOUR NAME
# Exercise 6: Decorator Pattern

# Do not modify this class. Pretend it is from a library that is "closed."
class HyperCar

  def initialize(sound)
    @sound = sound
  end

  def go
    3.times { puts @sound }
  end

end

# Do not modify this class. Pretend it is from a library that is "closed."
class CarService

  def initialize(car)
    @car = car
  end

  def execute
    @car.go
  end
end

class CarDecorate < CarService

  def go_decorate
    puts "awoogah"
    @car.go
    puts "wooosh"
  end

  def execute
    go_decorate
  end
end

hyper_car = HyperCar.new("bzzzz")
service = CarService.new(hyper_car)
service.execute

# TODO Exercise, using the decorator pattern. Can you add new behavior without
# changing the HyperCar class or the CarService class?





hyper_car = HyperCar.new("bzzzz")
second_service = CarDecorate.new(hyper_car)

second_service.execute
# This `execute` call should print:
# > awooga!
# > bzzzz
# > bzzzz
# > bzzzz
# > waka waka waka!
