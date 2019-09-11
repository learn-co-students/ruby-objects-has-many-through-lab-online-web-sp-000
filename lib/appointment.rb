class Appointment

  attr_accessor :patient, :doctor, :patient

  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def doctor
    @doctor
  end

end