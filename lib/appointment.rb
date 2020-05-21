require_relative 'patient'
require_relative 'doctor'

class Appointment

  attr_reader :date, :doctor
  attr_accessor :name
@@all = []

  def initialize(date, name, doctor)
    @name = name
    @date = date
    @doctor = doctor
    @@all << self
  end

  def patient
    Patient.all.select do |patient|
      patient.date == self
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