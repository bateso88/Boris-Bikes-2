require_relative 'Bike'
class DockingStation

  attr_reader :bike_storage

  def initialize(capacity = 20)
    @bike_storage = []
    @capacity = capacity
  end

  def release_bike
    raise "There is no bike" if empty?
    @bike_storage.pop
  end

  def dock(bike)
    raise "Docking station is full" if full?
    @bike_storage << bike
  end

  private

  def full?
    @bike_storage.length == @capacity 
  end

  def empty?
    @bike_storage.empty?
  end
end
