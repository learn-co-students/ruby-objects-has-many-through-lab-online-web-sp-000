class Appointment
  
  attr_accessor :date, :patients, :doctor
  
  @@all = [ ]
  
  def initialize(date, patients, doctor)
    @date = date
    @patients = patients
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def patient
    self.patients
  end
  
end