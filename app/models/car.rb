class Car
 
  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []
  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end
  def self.all
    @@all
  end

  def self.classifications
    self.all.map{|car| car.classification}.uniq
  end

  def self.find_mechanics(classification)
    self.all.select{|car| car.mechanic.specialty == classification}.map{|car| car.mechanic}
  end

end
