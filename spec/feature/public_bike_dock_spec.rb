require 'docking_station'
require 'capybara/rspec'

feature 'member of public docks bike' do
  scenario 'docking station unable to reveive as full' do
    docking_station = DockingStation.new
    20.times { docking_station.dock Bike.new }
    expect { docking_station.dock Bike.new }.to raise_error 'Station Full'
  end
end
