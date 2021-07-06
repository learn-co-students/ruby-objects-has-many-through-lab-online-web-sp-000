class Patient
  attr_accessor :name, :appointments, :doctors
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    @appointments << appointment
    @doctors << doctor
    appointment
  end

  #class methods
  def self.all
    @@all
  end

end
