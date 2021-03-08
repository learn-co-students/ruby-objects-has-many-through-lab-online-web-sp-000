require 'pry'

class Patient  
  attr_accessor :name   
  @@all = []
  

    def initialize(name) 
      @name = name 
      @@all << self
    end 
  
  
     def self.all 
       @@all
     end 
     
     
  
    def appointments 
     Appointment.all.select do |occurrence|
    self == occurrence.patient 
    end 
  end 
  
  
    def doctors
      Appointment.all.select do |occurrence|
      occurrence.doctor 
    end 
  end 
    
    
    def new_appointment(date,doctor)
      appointment.new(date, doctor)
    end 
end 