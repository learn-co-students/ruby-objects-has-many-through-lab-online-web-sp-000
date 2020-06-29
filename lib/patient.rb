class Patient

  attr_accessor :name, :appointment, :doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
    # binding.pry
  end

  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
end 