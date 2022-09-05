require './lib/car'
require './lib/dealership'
require 'rspec'

RSpec.describe Dealership do 
  before (:each) do 
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
  end
  #iteration 2
  it 'exists' do 
    expect(@dealership).to be_instance_of(Dealership)
  end
  
  it 'starts with no inventory' do 
    expect(@dealership.inventory).to eq([])
  end
  
  it 'counts inventory' do 
    expect(@dealership.inventory_count).to eq(0)
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    expect(@dealership.inventory).to eq([@car1, @car2])
    expect(@dealership.inventory_count).to eq(2)
  end
  #iteration 3
  it 'will check if dealership has inventory' do 
    expect(@dealership.has_inventory?).to eq(false)

    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)

    @dealership.add_car(car_1)
    @dealership.add_car(car_2)
    @dealership.add_car(car_3)
    @dealership.add_car(car_4)

    expect(@dealership.has_inventory?).to eq(true)
  end

  
  it 'checks cars by make' do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    @dealership.add_car(car_1)
    @dealership.add_car(car_2)
    @dealership.add_car(car_3)
    @dealership.add_car(car_4)
    expect(@dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
    expect(@dealership.cars_by_make("Ford")).to eq([car_1])
  end

  it 'calculates total value of vehicles' do 
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    @dealership.add_car(car_1)
    @dealership.add_car(car_2)
    @dealership.add_car(car_3)
    @dealership.add_car(car_4)


    expect(@dealership.total_value).to eq(156000)
  end

  it 'can list details of dealership' do 
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    @dealership.add_car(car_1)
    @dealership.add_car(car_2)
    @dealership.add_car(car_3)
    @dealership.add_car(car_4)

    expect(@dealership.details).to eq({"total_value" => 156000, "address" => "123 Main Street"})
  end
#iteration 4

  it 'can tell the average price of a car' do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    @dealership.add_car(car_1)
    @dealership.add_car(car_2)
    @dealership.add_car(car_3)
    @dealership.add_car(car_4)

    expect(@dealership.average_price_of_car).to eq("39,000")
  end




 
end