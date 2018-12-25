class Patient
  attr_accessor :name, :doctors, :appointments
  @@all = []
  
  def initialize(name)
    self.name = name
    self.doctors = []
    self.appointments = []
  end
  
  def self.all
    @@all
  end
  
end