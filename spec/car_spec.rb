require 'rspec'
require './lib/car'

RSpec.describe Car do
  before(:each) do 
    it 'exists' do
      @car = Car.new("Ford Mustang", 1500, 36)

      expect(@car).to be_a Car
    end
    
    it 'has a make' do
      expect(@car.make).to eq("Ford")
    end
    
    it 'has a model' do
      expect(@car.model).to eq("Mustang")
    end
    
    it 'has a monthly payment' do
      expect(@car.monthly_payment).to eq(1500)
    end
    
    it 'has a loan length' do
      expect(@car.loan_length).to eq(36)
    end
    
    it 'has a total cost' do
      expect(@car.total_cost).to eq(54000)
    end
    
    it 'starts with no color' do 
      expect(@car.color).to be(nil)
    end
    
    it 'can be painted a color' do
      expect(@car.paint!(:blue)).to eq(:blue)
    end
  end
end
  