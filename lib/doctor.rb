class Doctor

attr_accessor :name

@@all = []

def initialize (name)
@name = name
@patients = []
@appointments = []
@@all << self
end

 def new_appointment(patient, date)
appointment = Appointment.new(date, patient, self)

 end

 def patients
   @patients
 end

def appointments
  @appointments
end

def self.all
  @@all
end

end
