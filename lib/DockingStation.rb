require_relative 'Bike'
class DockingStation

  attr_reader :bike_storage

  DEFAULT_CAPACITY = 20

  def initialize
    @bike_storage = []
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
    @bike_storage.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bike_storage.empty?
  end
end
