class Patient

attr_accessor :name, :doctors, :appointments

@@all = []

def initialize(name)
  @name = name
  @doctors = []
  @appointments = []
  @@all << self
end

def new_appointment(doctor, date)
  a = Appointment.new(date, self, doctor)
  doctor.patients << self
  @doctors << doctor
  @appointments << a
  a
end

def self.all
  @@all
end

end
