require 'docking_station'

describe DockingStation do
  let(:subject) { described_class.new(capacity: 50) }
  it 'can set default capacity on initialisation' do
    expect(subject.capacity).to eq 50
  end
end
