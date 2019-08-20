require "pry"
class Doctor
  attr_accessor
  
  @@all = []
  def initialize
    @@all << self
  end
  
  def new_appointment(a_patient, a_date)
    self.new(a_patient, a_date)
  end
  
  def appointments
    Appointments.all.select do |d_appt|
      d_appt.name == self.name
    end
  end
    
end
  
  