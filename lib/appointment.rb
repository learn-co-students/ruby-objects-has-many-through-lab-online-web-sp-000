class Appointment
  
  @@all = []
  attr_accessor :date, :patient, :doctor
  
  def initialize(date, patient_oi, doctor_oi)
    @patient = patient_oi
    @doctor = doctor_oi
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end
