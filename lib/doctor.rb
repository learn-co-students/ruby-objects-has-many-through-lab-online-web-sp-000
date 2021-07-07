class Doctor 
  attr_accessor :name, :date, :patient 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date,patient,self)
  end 
  
  def patients 
    Patient.all
  end 
  
  def appointments 
    Appointment.all 
  end 
  
  def self.all
    @@all 
  end 
  
  
end 