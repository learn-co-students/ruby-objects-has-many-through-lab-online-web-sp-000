require 'pry'

class Patient  
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
  
    def appointment 
      Patient.all.select do |patients|
      patients.appointment 
    end 
  end 
  
  
    def doctor
    end 
    
    
    def new_appointment()
    end 
end 