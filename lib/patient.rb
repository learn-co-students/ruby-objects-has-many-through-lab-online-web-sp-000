class Patient
@@all = []
attr_accessor :name
def initialize(name)
  @name = name
  @doctors = []
  @appointments = []
@@all << self
end

def new_appointment(doctor, date)
appointment = Appointment.new(date, self, doctor)
end

def doctors
@doctors
end

def appointments
  @appointments
end

def self.all
@@all
end

end
