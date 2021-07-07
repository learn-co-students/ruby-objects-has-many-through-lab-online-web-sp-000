class Doctor
attr_accessor :patient, :appointment, :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(patient, date)
  Appointment.new(date, patient, self)
end

def patients
  Appointment.all.collect do |appointment|
    if appointment.doctor == self
      appointment.patient
    end
   end
end

def appointments
  Appointment.all.collect do |appointment|
    appointment if appointment.doctor == self
  end
end
def self.all
  @@all
end


end
