class Patient
  attr_accessor :name, :appointments, :doctors
  @@all = []
  def initialize (name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end
  def new_appointment (doctor, appointment)
    appointment = Appointment.new(appointment, self, doctor)
  end
  def self.all
    @@all
  end
end
