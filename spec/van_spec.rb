require 'van'

describe Van do
  it 'can pick up broken bike (from docking station and garage)' do
    subject.dock :bike
    expect(subject.bikes).to include :bike
  end

  it 'can release the bike (to garage and docking station)' do
    subject.dock :bike
    expect(subject.release_bike).to eq :bike
  end

  it 'has a default capacity of 10 ' do
    expect(subject.capacity).to eq 10
  end

  it 'raises an error when full' do
    Van::DEFAULT_CAPACITY.times { subject.dock :bike }
    expect { subject.dock :bike }.to raise_error 'Van Full'
  end
end
