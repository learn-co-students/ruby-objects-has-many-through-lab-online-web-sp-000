class Patient 
  attr_accessor :name, :date, :doctor, :appointment   
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def appointments 
    Appointment.all 
  end 
  
  def doctors 
    Doctor.all 
  end 
  
  def new_appointment(date,doctor)
    Appointment.new(self,date,doctor)
  end 
  
  def appointments 
   Appointment.all.select do |appointment|
     appointment.patient == self 
   end 
  end 
  
  
end 