class Appointment
  
  attr_accessor :doctor, :patient, :date 
  
  @@all = [] 
  
  def initialize(patient="", doctor="", date="") 
    @date = date 
    @doctor = doctor 
    @patient = patient 
    @@all << self 
  end 
  
   def self.all 
    @@all 
  end 
  
  def patients
    self.patient 
  end 
  
  def doctors
    self.doctor 
  end 
end 