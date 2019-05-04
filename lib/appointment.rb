class Appointment
  attr_accessor :date, :patients, :doctors, :patient, :doctor
  @@all = []
  def initialize (date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    patient.doctors << doctor
    patient.appointments << self
    doctor.patients << patient
    doctor.appointments << self
    @@all << self
  end
  def self.all
    @@all
  end
end
