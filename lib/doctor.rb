require 'pry'

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
  
  def new_appointment(date, name)
  date = Appointment.new(date, name, self)
  end 

  def patients
    Patient.all.select do |patient|
    patient.doctor == self
  end
  end 
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end 
  
end 