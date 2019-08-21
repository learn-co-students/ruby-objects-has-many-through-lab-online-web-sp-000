require "pry"
class Doctor
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(a_patient, a_date)
    self.new(a_patient, a_date)
  end
  
  def appointments
    Appointment.all.select do |d_appt|
      d_appt.name == self.name
    end
  end
    
end
  
  