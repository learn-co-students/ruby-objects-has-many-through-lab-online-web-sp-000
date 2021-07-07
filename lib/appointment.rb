class Appointment
  
  @@all = []
  
  attr_reader :date, :patient, :doctor
  
  def initialize(appointment_date, patient, doctor)
    @date = appointment_date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
end