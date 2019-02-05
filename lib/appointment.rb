class Appointment
  attr_accessor :date, :doctor, :patient
  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @patient=patient
    @doctor=doctor
    @date=date
    @@all << self
  end
end
