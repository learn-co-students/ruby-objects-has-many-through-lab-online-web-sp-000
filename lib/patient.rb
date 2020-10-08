class Patient
  attr_accessor :name, :doctor

  @@all = []
  @@doctor = []
  def initialize(name)
    @name = name
    @doctor = doctor
    @@all << self
  end

  @doctors = []

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end


  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end

end
