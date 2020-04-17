class Appointment

  @@all = []

  attr_accessor :patient, :doctor, :date

  def self.all
    @@all
  end

  def initialize(date, patient, doctor)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

end
