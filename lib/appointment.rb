class Appointment
  attr_accessor :date, :patient, :doctor

@@all = []

def initialize(date, patient, doctor)
  @date = date
  @patient = patient
  @doctor = doctor
  @@all << self
end

def self.all
  @@all
end

def patient=(patient)
  self.patient = patient
end

def doctor=(doctor)
  self.doctor = doctor
end

end
