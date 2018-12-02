class Patient
  attr_reader :name, :appointments, :doctors
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(doctor, self, date)
    appointments << appointment
    doctors << doctor
    appointment
  end
end
