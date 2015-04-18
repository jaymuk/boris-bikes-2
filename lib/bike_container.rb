module BikeContainer
  DEFAULT_CAPACITY = 20
  attr_writer :capacity

  def bikes
    @bikes ||= []
  end

  def bike_count
    bikes.count
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def dock bike
    fail 'Station Full' if full?
    bikes << bike
  end

  def release_bike
    fail 'No Bikes Available' if empty?
    bikes.pop
  end

  private

  def full?
    bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    bikes.reject(&:broken?).length == 0
  end
end
