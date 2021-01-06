require_relative 'Bike'
class DockingStation

  attr_reader :bike

  def release_bike
    raise "There is no bike" if @bike.nil?
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end
