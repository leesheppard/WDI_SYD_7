module Sims
  class Person

    attr_reader :location
    attr_accessor :hunger, :weight

    def initialize
      @location = 0
      @hunger = 0
      @weight = 0

    end

    def walk(distance)
      @location += distance
    end

    def eat(food)
      @hunger -= food.weight
      @weight += food.weight
    end

  end
end