require 'pry'

class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = all
    @date = date
    @@all << self
  end

  def patient
    # binding.pry
  end

end
