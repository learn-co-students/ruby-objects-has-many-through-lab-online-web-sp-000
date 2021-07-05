class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def new_appointment(doctor, date)      #creates a new appointment belonging to that patient
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map(&:doctor)
  end
end
