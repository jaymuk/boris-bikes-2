class Van
  attr_accessor :pick_up

  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 10

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def dock(bike)
    fail 'Van Full' if full?
    @bikes << bike
    nil
  end

  def release_bike
    @bikes.pop
  end

  private

  def full?
    bikes.length >= DEFAULT_CAPACITY
  end
end
