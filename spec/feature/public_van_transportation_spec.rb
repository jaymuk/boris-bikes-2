require 'van'
require 'garage'
require 'capybara/rspec'

feature 'transports broken bikes to and from garage' do
  scenario 'picks up broken bike from docking station' do
    van = Van.new
    expect(van.dock :bike).to eq nil
  end

  scenario 'drops off broken bikes at garage' do
    van = Van.new
    garage = Garage.new
    van.dock :bike
    bike = van.release_bike
    garage.dock(bike)
    expect(garage.bikes).to include :bike
  end
end
