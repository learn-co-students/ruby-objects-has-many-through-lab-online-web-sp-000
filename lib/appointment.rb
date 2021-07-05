class Appointment
  attr_accessor :date, :doctor, :patient         #instance variables to create explicitly create appointments for doctor/patient
                                                  #these connect relationships to deliver information on these related objects
  @@all = []

  def initialize(patient, doctor, date)           #had to be in this order for it to work (patient, doctor, date)
    @date = date                                  #but spec/05_appointment_spec.rb had tests listed (date, patient, doctor)
    @doctor = doctor                              #method new_appointments spec was listed with date at end maybe thats why to fulfill tests
    @patient = patient
    @@all << self
  end

  def self.all
    return @@all
  end
end
