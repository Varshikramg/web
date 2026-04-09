class Vehicle
  attr_reader :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def vehicle_type
    "Vehicle"
  end

  def details
    "#{year} #{make} #{model} - Type: #{vehicle_type}"
  end
end

class Car < Vehicle
  def vehicle_type
    "Car"
  end

  def details
    "Car Details: #{super}"
  end
end

class Bike < Vehicle
  def vehicle_type
    "Bike"
  end

  def details
    "Bike Details: #{super}"
  end
end

class Truck < Vehicle
  def vehicle_type
    "Truck"
  end

  def details
    "Truck Details: #{super}"
  end
end

puts Car.new("Toyota", "Corolla", 2021).details
puts Bike.new("Yamaha", "R15", 2023).details
puts Truck.new("Tata", "Signa", 2020).details
