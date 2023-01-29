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

  def to_s
    if refrigerator != nil
      fridge_volume = refrigerator.height * refrigerator.width * refrigerator.depth
      fridge_volume_gallons = fridge_volume * 7.48052
      "Kitchen. Fridge volume = #{fridge_volume_gallons} gallons"
    end
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

