require_relative 'patient'
require_relative 'doctor'

class Appointment

  attr_reader :date, :doctor
  attr_accessor :patient
@@all = []

  def initialize(name, doctor, appointment)
    @name = name
    @@all << self
  end

  def patient
    Patient.all.select do |patient|
      patient.appointment == self
    end
  end

  def doctor
    Patient.all.map do |patient|
      patient.doctor
    end
  end
  
  def self.all 
    @@all
  end
  
  
end