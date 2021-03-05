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
      Patient.each do |appointments|
      appointments.doctor 
    end 
  end 
end
  
  
  
  
  