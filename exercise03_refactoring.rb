class IceBoxRefrigerator

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    @height = height
    @width = width
    @depth = depth
  end

  def add(beverage)
  end
end

class BrokenRefrigerator

  attr_reader :height, :width, :depth

  def initialize(height = 0, width = 0, depth = 0)
    @height = height
    @width = width
    @depth = depth
  end

  def add(beverage)
  end

end

class RootBeer; end
class Kombucha; end

class Kitchen

  attr_reader :refrigerator, :beverage

  def initialize(args)
    @refrigerator = args.fetch(:refrigerator, nil)
    @beverage = args.fetch(:beverage, nil)
  end

  def add_beverage_to_refrigerator
    if refrigerator != nil
      refrigerator.add(beverage)
    end
  end

  def fridge_volume
    if refrigerator != nil
      fridge_volume = refrigerator.height * refrigerator.width * refrigerator.depth
    else
      fridge_volume = 0
    end
  end

  def to_s
    "Kitchen. Fridge volume = #{volume_to_gallons} gallons"
  end

  private

  def volume_to_gallons
    fridge_volume * 7.48052
  end

end

# Current usage example:


iceboxrefigerator = IceBoxRefrigerator.new
rootbeer = RootBeer.new
kitchen = Kitchen.new(:refrigerator => iceboxrefigerator, :beverage => rootbeer)
kitchen.add_beverage_to_refrigerator
puts kitchen

# kitchen has an IceBoxRefrigerator with a RootBeer in it.

# Problem: you can't create a kitchen with a different fridge, and you can't
#          add any beverage other than beer.

# Goal: Create a kitchen with a BrokenRefrigerator, and add Kombucha to it.

