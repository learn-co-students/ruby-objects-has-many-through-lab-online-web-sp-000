class Patient

attr_accessor :name, :appointment, :doctor
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(doctor, date)
 Appointment.new(self, date, doctor)
end

def appointments
 Appointment.all.select {|appointment| appointment.patient = self}
end
end 

def doctors
  appointments.collect {|appointment| appointmet.doctor}
end


def self.all
  @@all
end



end
