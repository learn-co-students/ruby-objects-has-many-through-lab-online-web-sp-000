class Doctor

attr_accessor :name , :patient

@@all = []

def initialize(name)
  @name = name 
  @@all << self 
end 

def self.all 
  @@all 
end 

def new_appointment(date, patient)
  Appointment.new(date, patient, self)
end 

def appointments
Appointment.all.select do |appt|
  appt.doctor == self 
end 
end 

def patients
  self.appointments.collect do |v| 
    v.patient
  end 
end 

end 
