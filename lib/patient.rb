require 'pry'

class Patient  
  attr_accessor :name, :appointment, :doctor   
  @@all = []
  

    def initialize(name) 
      @name = name 
      @appointment = appointment 
      @doctor = doctor 
      @@all << self 
    end 
    
    
    def name
     @name 
    end 
  
     def self.all 
       @@all
     end 
  
    def appointment 
      Patient.each do |appointments|
      appointments.doctor 
    end 
  end 
end 