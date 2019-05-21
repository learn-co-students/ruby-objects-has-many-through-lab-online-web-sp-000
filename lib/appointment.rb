class Appointment
  
  attr_accessor :doctor, :patient, :doctor
  
  @@all = []
  
  def initialize(patient, doctor, date = "Monday, August 1st")
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
  def self.all
    @@all
  end 
end