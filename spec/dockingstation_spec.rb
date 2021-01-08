require "DockingStation"

describe DockingStation do

  context "initialising number of docks" do
    it "tests if it is possible to set number of docks to 15" do
      docking_station = DockingStation.new(15)
    end

    it "defaults to 20 spots" do
      docking_station = DockingStation.new
      expect(docking_station.capacity).to eq 20
    end
  end

  context "release bike function" do

    it {is_expected.to respond_to :release_bike}

    it "should return a bike if there is a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end

    it "should return an error if there is no bike" do
      expect{subject.release_bike}.to raise_error "There is no bike"
    end

  end
  context "dock bike function" do
    it "" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike_storage).to include bike
    end

    it "should return error if trying to dock bike in a full docking station" do
      docking_station = DockingStation.new
      docking_station.capacity.times { docking_station.dock(Bike.new) }
      expect{ docking_station.dock(Bike.new) }.to raise_error "Docking station is full"
    end

  end

end
