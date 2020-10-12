class Appointment

  attr_accessor :date, :doctor, :patient

  @@all = []

  def initialize (date, doctor, patient)
    @doctor = doctor
    @date = "date"
    @patient = patient
    doctor.appointments << self
    patient.appointments << self
    @@all << self
  end

  def self.all
    @@all
  end
end
