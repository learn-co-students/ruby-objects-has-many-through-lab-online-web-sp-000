class Doctor
  attr_reader :name, :appointments

  DOCTORS = []
  def self.all
    DOCTORS
  end

  def initialize(name)
    @name = name
    @appointments = []
    DOCTORS << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    @appointments << appointment
    appointment
  end

  def patients
    @appointments.map { |appointment| appointment.patient }
  end
end
