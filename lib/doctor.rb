require 'pry'

class Doctor 
  attr_accessor :name  
  @@all = []
  

    def initialize(name) 
      @name = name
      @@all << self 
    end 
    
  
     def self.all 
       @@all
     end
     
     
     def new_appointment(date, patient)
       Appointment.new(date, patient, self)
       #use self to replace doctor, because doctor variable has not been established prior to this
     end 
     
     
  
    def appointments
    new_array = Appointment.all.select do |detail|
      self == detail.doctor
     end 
     new_array
   end 


    def patients
      self.appointments.map do |appointment|
      #self in this case pertais to a specific doctor
      appointment.patient
    end
  end 
end
