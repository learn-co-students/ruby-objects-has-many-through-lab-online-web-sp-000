class Appointment
  @@all = []
  attr_accessor :date, :patient, :doctor
  
  
  def initialize(date_str, patient, doctor)
    @date = date_str
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end