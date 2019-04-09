class Appointment
  attr_accessor :date, :doctor, :patient
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(date, patient, doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    self.class.all << self
  end
end