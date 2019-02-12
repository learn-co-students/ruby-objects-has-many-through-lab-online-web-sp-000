require "pry"

class Doctor
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    appt = Appointment.new(patient, self, date)
  
  end
  
  def appointments
    Appointment.all.select do |d|
      d.doctor == self
    end
  end
  
  def patients
    appointments.map do |d|
      d.patient
    end
  end
  
  
  
end