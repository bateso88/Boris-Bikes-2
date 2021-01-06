require "DockingStation"
describe DockingStation do

  context "release bike function" do


    it {is_expected.to respond_to :release_bike}

    it "should return a bike" do
        expect(DockingStation.new.release_bike).to be_a Bike
    end

    it "should be a working bike" do
        expect(Bike.new.working?).to eq true
    end
  end
end
