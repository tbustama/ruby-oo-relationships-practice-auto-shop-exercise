class CarOwner
 
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def cars
    Car.all.select{|car| car.owner == self}
  end

  def mechanics
    self.cars.map{|car| car.mechanic}.uniq
  end

  def self.average_number_of_cars
    self.all.sum{|carowner| carowner.cars.count} / self.all.count
  end
end

