class Appointment
  attr_accessor :doctor, :patient

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    doctor.appointments << self
    patient.appointments << self
    @@all << self
  end

  def self.all
    @@all
  end



end
