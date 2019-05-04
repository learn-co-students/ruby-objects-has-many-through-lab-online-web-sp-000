class Doctor
  attr_accessor :name, :patients, :appointments
  @@all = []
  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
    @@all << self
  end
  def new_appointment (patient, appointment)
    appointment = Appointment.new(appointment, patient, self)
  end
  def self.all
    @@all
  end
end
