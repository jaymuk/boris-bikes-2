require_relative 'bike_container'

class DockingStation
  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end
  # DEFAULT_CAPACITY = 20
  # attr_accessor :capacity

  # def initialize(capacity = DEFAULT_CAPACITY)
  #   @capacity = capacity
  #   @bikes = []
  # end

  # def dock(bike)
  #   fail 'Station Full' if full?
  #   bikes << bike
  #   nil
  # end

  # def release_bike
  #   fail 'No Bikes Available' if empty?
  #   bikes.pop
  # end

  # private

  # attr_reader :bikes

  # def full?
  #   bikes.length >= DEFAULT_CAPACITY
  # end

  # def empty?
  #   bikes.reject(&:broken?).length == 0
  # end
end
