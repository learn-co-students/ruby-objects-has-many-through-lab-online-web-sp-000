class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    @appointments
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    doctors = appointments.map{|appointment| appointment.doctor}
    doctors
  end
end
