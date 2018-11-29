# uses given bikes
require_relative 'bike'
class DockingStation
  attr_accessor :bike
  # creates a new bike
  def release_bike
     Bike.new
  end

  def dock(bike)
   @bike = bike
  end



end
