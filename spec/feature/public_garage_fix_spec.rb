require 'garage'
require 'capybara/rspec'

feature 'garage fixes bike' do
  scenario 'garage fixes broken bike' do
    garage = Garage.new
    bike = Bike.new
    garage.dock bike
    garage.fix bike
    expect(bike).not_to be_broken
  end
end
# bike = double :bike, broken?: false
# expect(bike).to receive(:fix)
# garage.fix bike
