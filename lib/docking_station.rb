# uses given bikes
require_relative 'bike'
class DockingStation
  attr_accessor :bike

  # creates a new bike
  def dock(bike)
     raise 'Station Full' unless @bike = bike
     #fail 'Station Full' if @bike
     @bike = bike
  end

  def release_bike

    raise 'No bikes available' unless @bike
    @bike
  end


end
