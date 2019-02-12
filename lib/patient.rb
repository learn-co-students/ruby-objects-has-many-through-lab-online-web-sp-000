require "pry"

class Patient
  
  attr_accessor :name, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def doctor 
    Doctor.all.find do |d|
      d.patient
    end
  end
  
  def new_appointment(doctor, date)
    appt = Appointment.new(self, doctor, date)
    
  end
  
  def appointments
    Appointment.all.select do |a|
      a.patient == self
    end
  end
  
  def doctors
    Appointment.all.map do |a|
      a.doctor
    end
  end
  
  
  
end