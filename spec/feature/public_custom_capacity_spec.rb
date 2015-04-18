require 'docking_station'
require 'capybara/rspec'

feature 'system admin sets custom capacity' do
  scenario 'to 40' do
    docking_station = DockingStation.new
    docking_station.capacity = 40
    expect(docking_station.capacity).to eq 40
  end
end
