require 'pry'
class Doctor
  attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients #has many patients, through appointments
    #iterates over that doctor's Appointments and collects the patient that belongs to each Appointments
    Appointment.all.map {|appointment| appointment.patient}
  end
end
