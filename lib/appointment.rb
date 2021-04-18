class Appointment
    @@all = []
  attr_accessor :date, :patient, :doctor, :appointment, :name

  def initialize (date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  def self.all
    @@all
  end
  # def patient(patient)
  #   @patient = patient
  # end
end
