require "bike"
describe Bike do 

  let(:bike) { Bike.new }

  it {is_expected.to respond_to :working?}

  it 'should be able to report bike as broken' do 
    bike.report_broken
    expect(bike).not_to be_working
  end

end