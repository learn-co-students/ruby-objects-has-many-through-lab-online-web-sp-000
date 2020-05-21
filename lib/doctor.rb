require 'pry'
require_relative 'patient'
require_relative 'appointment'
class Doctor 
    attr_accessor :name, :date, :patient
  @@all = []
  
  def initialize(name)
    @name = name
    # @genre = genre
    # @song = song
  @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end
  end 
  
  def new_appointment(name, appointment)
  name = Appointment.new(name, self, appointment)
  end 

  def patient 
    Patient.all.select do |patient|
    patient.appointment
  end
  end 
  
  def appointment 
    Patient.all.map do |patient|
      patient.appointment
    end
  end 
  
end 