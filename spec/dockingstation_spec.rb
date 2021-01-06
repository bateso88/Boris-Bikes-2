require "DockingStation"
describe DockingStation do

  context "release bike function" do


    it {is_expected.to respond_to :release_bike}

    it "should return a bike" do
        bike = subject.release_bike
        expect(bike).to be_working
    end

  end

it "dock something" do    
  bicycle = Bike.new
  subject.dock(bicycle)
  expect(subject.bike).to eq bicycle
end

  

end
