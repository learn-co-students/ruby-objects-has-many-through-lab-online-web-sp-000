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

def new_appointment(date,patient)
  Appointment.new(date, patient, self)
end

def appointments
  Appointment.all.select do | appt |
    appt.doctor == self
  end
end

def patients
  apptsofdoc = appointments()
  patientsofdoc = []
  apptsofdoc.each do | appt |
    patientsofdoc << appt.patient
  end
  patientsofdoc
end

end
