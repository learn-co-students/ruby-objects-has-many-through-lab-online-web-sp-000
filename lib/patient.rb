class Patient

  attr_accessor :name, :doctor, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @doctor = doctor
    @appointment = appointment
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

#returns all appointments associated with this Patient
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

#has many doctors through appointments
  def doctors
    Appointment.all.map {|appointment| appointment.doctor}
  end

end
