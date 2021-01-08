require_relative 'Bike'
class DockingStation

  attr_reader :bike_storage

  def initialize(capacity = 20)
    @bike_storage = []
    @capacity = capacity
  end

  def release_bike
    raise "There is no bike" if @bike_storage.empty?
    @bike_storage
  end

  def dock(bike)
    raise "Docking station is full" if @bike_storage.length == @capacity
    @bike_storage << bike
  end

end
