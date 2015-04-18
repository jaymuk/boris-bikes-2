class Bike
  attr_accessor :broken
  alias_method :broken?, :broken

  def initialize
    @broken = false
  end

  def break
    @broken = true
  end
end
