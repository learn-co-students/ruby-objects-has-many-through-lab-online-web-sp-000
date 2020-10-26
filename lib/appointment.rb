class Appointment

  attr_accessor :name, :patient, :doctor, :date

  @@all = []

  def initialize(date= "Monday, August 1st", patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end


end
