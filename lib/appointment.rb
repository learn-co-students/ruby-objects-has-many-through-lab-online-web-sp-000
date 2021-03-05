require 'pry' 

class Appointment
  attr_accessor :date, :doctor, :patient 
  @@all = []
  
  
  def initialize (date, doctor, patient)
    @date = date 
    @doctor = doctor
    @patient = patient 
    @@all << self 
  end 
  
  
  def patient 
    Patient.all.select do |patients|
    self.appointment 
  end 
end 


def new_appointment
  self.new 
end 
end 
