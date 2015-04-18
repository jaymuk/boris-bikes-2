require 'van'
require 'capybara/rspec'

feature 'van picks up bike' do
  scenario 'van unable to pick up as it is full' do
    van = Van.new
    10.times { van.dock :bike }
    expect { van.dock :bike }.to raise_error 'Van Full'
  end
end
