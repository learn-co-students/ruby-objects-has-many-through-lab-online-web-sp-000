require_relative 'patient'
require_relative 'doctor'

class Appointment

  attr_reader :date, :doctor
  attr_accessor :patient
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def patient
    Patient.all.select do |song|
      patient.appointment == self
    end
  end

  def doctors
    Patient.all.map do |song|
      patient.doctor
    end
  end
  
  def self.all 
    @@all
  end
end