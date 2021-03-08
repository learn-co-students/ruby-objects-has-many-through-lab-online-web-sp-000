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
     Appointment.all.select do |appointment|
    self == appointment.patient 
    end 
  end 



    def doctors
      new_array = self.appointments.map do |appointment|
        #do select when you only want to  some grab appointments, map changes all of the appointments
      appointment.doctor 
    end 
    
  end 
     
 
    
    def new_appointment(date,doctor)
      Appointment.new(date, self, doctor)
    end 
end 