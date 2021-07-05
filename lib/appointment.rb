class Appointment
  attr_accessor :name, :doctor, :patient

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  #class methods
  def self.all
    @@all
  end
end
