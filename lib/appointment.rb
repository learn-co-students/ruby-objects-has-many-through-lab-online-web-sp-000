class Appointment
  attr_accessor :patient, :doctor
  @@all = []
  
  def initialize(patient, doctor, date)
    patient.appointments << self
    patient.doctors << doctor
    self.patient = patient
    
    doctor.appointments << self
    doctor.patients << patient
    self.doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end