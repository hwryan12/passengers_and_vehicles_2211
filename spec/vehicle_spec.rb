require 'RSpec'
require './lib/vehicle'
require './lib/passenger'


RSpec.describe Vehicle do
  let(:vehicle) { Vehicle.new("2001", "Honda", "Civic") }
  let(:taylor) { Passenger.new({name: "Taylor", age: 12}) }
  let(:charlie) { Passenger.new({name: "Charlie", age: 18}) }
  let(:jude) { Passenger.new({name: "Jude", age: 20}) }
  it 'exists' do
   
    expect(vehicle).to be_an_instance_of(Vehicle)
  end

  it 'has attributes' do

    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it "can speed" do

    expect(vehicle.speeding?).to be false

    vehicle.speed

    expect(vehicle.speeding?).to be true
  end

  it "can hold passengers" do

    vehicle.add_passenger(charlie)    
    vehicle.add_passenger(jude) 
    vehicle.add_passenger(taylor)

    expect(vehicle.passengers).to eq([charlie, jude, taylor])
  end

 it 'will show the number of adults invehicle' do  

    vehicle.add_passenger(charlie)    
    vehicle.add_passenger(jude) 
    vehicle.add_passenger(taylor)

    expect(vehicle.num_adults).to eq(2)
  end
end