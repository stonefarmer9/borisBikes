# uses given bikes
require_relative 'bike'

class DockingStation
  # creates a new bike
  def release_bike
    Bike.new
  end
end
