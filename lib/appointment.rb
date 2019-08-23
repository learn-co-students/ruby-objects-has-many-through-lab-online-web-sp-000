class Appointment
  
  attr_accessor :date, :doctor, :patient
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
    doctor.appointment << self
    patient.appointments << self
  end
  
  def self.all
    @@all
  end
  
  
  
end