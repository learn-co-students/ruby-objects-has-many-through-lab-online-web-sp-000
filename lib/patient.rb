class Patient
  attr_reader :name, :appointments

  PATIENTS = []
  def self.all
    PATIENTS
  end

  def initialize(name)
    @name = name
    @appointments = []
    PATIENTS << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    @appointments << appointment
    appointment
  end

  def doctors
    @appointments.map { |appointment| appointment.doctor }.uniq
  end
end
