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

  
  def self.all
    @@all 
  end 
  
  
  
  def patient 
    Patient.all.select do |patients|
    self.appointment
  end 
end 


    def new_appointment(date, doctor, patient)
      Appointment.new(date, patient)
    end 


    def doctor 
      Doctor.all.select do |doctors|
      doctors.appointment 
    end 
end 
end 

