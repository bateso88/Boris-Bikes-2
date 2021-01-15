require 'docking_station'

describe DockingStation do

  let(:bike) { double :bike }
  let(:docking_station) { DockingStation.new }

  context "initialising number of docks" do
    it "tests if it is possible to set number of docks to 15" do
      docking_station = DockingStation.new(15)
    end

    it "defaults to DEFAULT_CAPACITY spots" do
      expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  context "release bike function" do

    it {is_expected.to respond_to :release_bike}

    it "should return a bike if there is a bike" do
      subject.dock(bike)
      allow(bike).to receive(:working?).and_return true
      expect(subject.release_bike).to be_working
    end

    it "should return an error if there is no bike" do
      expect { subject.release_bike }.to raise_error "There is no bike"
    end

    it "should return an error if bike is broken" do
      allow(bike).to receive(:working?).and_return false
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error "Bike is broken"
    end

  end
  context "dock bike function" do
    it "Checks that bikes contains bike once bike has been docked" do
      subject.dock(bike)
      expect(subject.bikes).to include bike
    end

    it "should return error if trying to dock bike in a full docking station" do
      docking_station.capacity.times { docking_station.dock double(:bike) }
      expect{ docking_station.dock(bike) }.to raise_error "Docking station is full"
    end

  end

end
