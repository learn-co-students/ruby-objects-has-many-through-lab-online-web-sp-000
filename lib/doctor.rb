require 'pry'

class Doctor 
  attr_accessor :name  
  @@all = []
  

    def initialize(name) 
      @name = name
      @@all << self 
    end 
    
    
    def name
     @name 
    end 
    
    
  
     def self.all 
       @@all
     end
     
     
     def new_appointment(date, patient) 
       Appointment.new(date, patient)
     end 
     
     
  
    def appointments(date, patient) 
      Doctor.all.select do |doctors|
      doctor.appointments 
    end
  end 
  
  
    def patients() 
    end 
end
