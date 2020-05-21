require_relative 'doctor'
require_relative 'appointment'
class Patient 
  attr_accessor :name, :date, :doctor
  @@all = []
  
  def initialize (date= nil, name, doctor)
    @name = name
    @doctor = doctor
    @date = date
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, doctor)
    date = Appointment.new(date, doctor)
  end 
  
  def new(name)
    name = Patient.new(name, doctor=nil)
  end 
  
  def doctors 
    Doctor.all.select do |patient|
      doctor.patient == self
    end
  end 
  
end 