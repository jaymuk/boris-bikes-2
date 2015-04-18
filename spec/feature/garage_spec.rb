require 'garage'

describe Garage do
  it 'can fix broken bike' do
    bike = double :bike, broken?: true
    subject.dock bike
    allow(bike).to receive(:broken=) .and_return(false)
    expect(bike.broken?).to eq false
    subject.fix bike
  end
end
