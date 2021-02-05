require 'pry'

class Patient
  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    newapp = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|x| x.patient == self}
  end

  def self.all
    @@all
  end

  def doctors
    appointments.map {|x| x.doctor}
  end

end
