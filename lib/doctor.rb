class Doctor

  attr_accessor :appointments, :patients
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    @appointments << appointment
    @patients << patient
    appointment
  end

  # class methods
  def self.all
    @@all
  end

end
