require_relative 'patient'
require_relative 'doctor'

class Appointment
  @@all = []
  
  attr_reader :patient, :doctor
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end
  
  def self.all
    @@all.each do |app|
      app
    end
  end
end