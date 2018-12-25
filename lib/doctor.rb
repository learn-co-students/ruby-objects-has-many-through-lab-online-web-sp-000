class Doctor
  attr_accessor :name, :patients, :appointments
  @@all = []
  
  def initialize(name)
    self.name = name
    self.appointments = []
    self.patients = []
    @@all << self
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end
  
  def self.all
    @@all
  end
  
end