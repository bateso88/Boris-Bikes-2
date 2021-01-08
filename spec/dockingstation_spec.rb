require "DockingStation"
describe DockingStation do

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
    it do
      bicycle = Bike.new
      subject.dock(bicycle)
      expect(subject.bike).to eq bicycle
    end

    it "should return error if trying to dock bike in a full docking station" do
      bike1 = Bike.new
      docking_station = DockingStation.new
      docking_station.dock(bike1)
      expect{docking_station.dock(Bike.new)}.to raise_error "There is already a bike"
    end

  end

end
