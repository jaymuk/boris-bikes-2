class Garage
  attr_writer :dock
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(bike)
    @bikes << bike
  end

  def fix(bike)
    bike.broken = false
  end
end
