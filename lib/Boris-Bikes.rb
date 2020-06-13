require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes

  def initialize
     @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
    #"Bike Released"
  end

  def dock(bike)
    fail 'This station is full' if full?
    @bikes << bike
  end

  private
  
  def full?
     @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
