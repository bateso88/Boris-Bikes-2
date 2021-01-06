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
      expect{subject.release_bike}.to raise_error
    end

  end
  context "docks bike" do
    it do
      bicycle = Bike.new
      subject.dock(bicycle)
      expect(subject.bike).to eq bicycle
    end
  end

end
