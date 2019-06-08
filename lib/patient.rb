class Patient
  attr_accessor :name
  attr_reader :appointments, :doctors
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    Patient.all << self
  end
  
  def new_appointment(doctor, date)
    n_a = Appointment.new(date, self, doctor)
    appointments << n_a
    doctors << doctor
    doctor.patients << self unless doctor.patients.include?(self)
    n_a
  end
  
  def self.all
    @@all
  end
end