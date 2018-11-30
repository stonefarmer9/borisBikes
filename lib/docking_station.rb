# uses given bikes
require_relative 'bike'
class DockingStation
  attr_accessor :bike

  def initialize
    @bikes = []
  end

  # creates a new bike
  def dock(bike)
     fail 'Station Full' if @bikes.count >= 20
     @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end


end
