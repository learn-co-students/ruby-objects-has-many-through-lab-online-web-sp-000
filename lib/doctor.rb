class Doctor
  attr_reader :name, :patients, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(self, patient, date)
    self.appointments << appointment
    self.patients << patient
    appointment
  end
end
