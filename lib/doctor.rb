require 'pry'

class Doctor 
    attr_accessor :name, :date, :patient
  @@all = []
  
  def initialize(name)
    @name = name
    @patient = patient
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
  
  def new_appointment(date, patient)
  date = Appointment.new(date, patient, self)
  end 

  def patients
    appointments.map do |appointment|
      appointment.patient  
    end
  end

def patients
    appointments.map(&:patient)
  end
  
end 