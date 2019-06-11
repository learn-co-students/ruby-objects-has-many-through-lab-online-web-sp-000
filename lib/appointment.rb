class Appointment
  @@all = []
  attr_accessor :date, :patient, :doctor
  def initialize(patient, date, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end
  # def patient
  #   Patient.all.select do |patient|
  #     patient.appointment == self
  #   end
  # end
  # def doctors
  #   Doctor.all.select do |doctor|
  #     doctor.appointment == self
  #   end
  # end
end
