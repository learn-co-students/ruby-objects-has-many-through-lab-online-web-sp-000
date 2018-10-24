class Appointment
  attr_reader :patient, :doctor, :date

  APPOINTMENTS = []
  def self.all
    APPOINTMENTS
  end

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    APPOINTMENTS << self
  end
end
