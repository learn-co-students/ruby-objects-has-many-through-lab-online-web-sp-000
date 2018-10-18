class Appointment
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = all
    @date = date
    @@all << self
  end
  
end
