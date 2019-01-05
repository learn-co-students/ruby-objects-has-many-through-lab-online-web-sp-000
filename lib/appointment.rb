class Appointment 
  attr_accessor :appointment, :patient, :doctor, :date 
  
  @@all = []
  
  def initialize(patient, doctor, date)
    @appointment = appointment
    @patient = patient
    @doctor = doctor
    @date = ""
    @@all << self 
    
  end
  
  def self.all 
    
    @@all 
    
  end 
  
  def patient 
    @patient
  end 
  
  def doctor
    @doctor
  end 
  
end