class Patient
  attr_accessor :name, :doctors, :appointments
  @@all = []
  
  def initialize(name)
    self.name = name
    self.doctors = []
    self.appointments = []
    @@all << self
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end
  
  def self.all
    @@all
  end
  
end