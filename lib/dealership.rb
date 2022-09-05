class Dealership 
  attr_reader :name, 
              :address, 
              :inventory

  def initialize(name, address) 
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count 
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory.count == 0
      false 
    else 
      true
    end
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      car.make == make
    end
  end
  
  def total_value
    @inventory.sum do |car|
      car.total_cost
    end
  end

  def details 
    dealership_details = {
      'total_value' => total_value, 
      'address' => @address
    }
  end
end