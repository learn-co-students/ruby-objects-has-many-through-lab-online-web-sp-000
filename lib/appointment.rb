class Appointment
  attr_accessor :date, :patient, :doctor 

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    save << self
  end

  def self.all
    @@all
  end

  private

  def save
    self.class.all
  end


end