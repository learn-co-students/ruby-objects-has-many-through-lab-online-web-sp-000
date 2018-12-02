class Appointment
  attr_reader :doctor, :patient, :date
  @@all = []

  def initialize(doctor, patient, date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end
end
