require_relative 'Bike'
class DockingStation

  attr_reader :bike

  def release_bike
    raise "There is no bike" if @bike.nil?
    @bike
  end

  def dock(bike)
    raise "There is already a bike" if @bike
    @bike = bike
  end

end
