class Appointment 
  @@all = []
  
  attr_accessor :name, :date, :patient, :doctor
  
  def initialize(date, patient, doctor)
    @name = name   
    @date = "Monday, August 1st"
    @doctor = doctor
    @patient = patient
    @@all << self
  end
    
  
  
  def self.all
    @@all 
  end
end