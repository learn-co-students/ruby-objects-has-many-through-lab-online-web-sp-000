class Appointment 
  attr_accessor :patient, :doctor
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def initialize(a, b, c)
    @date = a
    @patient = b
    @doctor = c
    @@all << self 
  end 
  
end 