module GildedRose
  class Item
    attr_reader :quality, :days_remaining
    def initialize(quality, days_remaining)
      @quality, @days_remaining = quality, days_remaining
  end
    def tick 

    end
end
  class Normal < Item
    def tick
      @days_remaining -= 1 
      return if@quality == 0
      @quality -= 1
      @quality -= 1 if @days_remaining <= 0
    end
  end
  class Brie < Item
    def tick
      @days_remaining -= 1
      return if @quality >= 50
      @quality += 1
      @quality += if @days_remaining < 0
    end
  end



     