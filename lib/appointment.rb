require 'pry' 

class Appointment
  attr_accessor :date, :doctor, :patient 
#setter and getter methods create a doctor and patient method
  @@all = []
  
  
  def initialize (date, patient, doctor) 
    @date = date 
    @doctor = doctor
    #where doctor belongs to appointment
    @patient = patient
    #where patient belongs to appointment
    @@all << self 
  end

  
  def self.all
    @@all 
  end 
  


    def new_appointment(date, patient, doctor)
      Appointment.new(date, patient)
    end 
   end 

