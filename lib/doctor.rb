require 'pry'

class Doctor 
  attr_accessor :name, :appointment, :patient  
  @@all = []
  

    def initialize(name) 
      @name = name
      @appointment = appointment
      @patient = patient
      @@all << self 
    end 
    
    
    def name
     @name 
    end 
  
     def self.all 
       @@all
     end
     
     
     def new_appointment 
       Appointment.new 
     end 
     
     
  
    def appointment 
      Doctor.all.select do |doctors|
      doctor.appointment 
    end 
  end 
end
  
  
  
  
  