#! /usr/bin/env ruby
# padraic bergin
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

class CarDecorator

  def initialize(car)
    @car = car
  end

  def go
    puts "awoogah"
    @car.go
    puts "wooosh"
  end

end

hyper_car = HyperCar.new("bzzzz")
service = CarService.new(hyper_car)
service.execute





hyper_car = HyperCar.new("bzzzz")
cardecorator = CarDecorator.new(hyper_car)
second_service = CarService.new(cardecorator)

second_service.execute
# This `execute` call should print:
# > awooga!
# > bzzzz
# > bzzzz
# > bzzzz
# > waka waka waka!
