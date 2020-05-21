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
  
  def new_patient(name, genre)
  name = Patient.new(name, self, genre)
  end 

  def patient 
    Patient.all.select do |patient|
    patient.doctor == self
  end
  end 
  
  def appointment 
    Patient.all.map do |patient|
      patient.appointment
    end
  end 
  
end 