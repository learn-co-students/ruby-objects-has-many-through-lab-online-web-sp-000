class Patient
  attr_accessor :name, :appointment
  @@all = []
  def initialize(name)
    @name = name
    @@all<<self
end

def new_appointment(doctor, date)
  Appointment.new(self,date, doctor)
end

def appointments
  Appointment.all.select{|appointment| appointment.patient}
end

def self.all
  @@all
end

def doctors
  appointments.map{|appointment| appointment.doctor}
end
end
