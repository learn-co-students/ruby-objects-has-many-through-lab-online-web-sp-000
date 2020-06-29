require 'pry'
class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    # binding.pry
    Appointment.all.map do |appt|
      appt.patient
    end
  end

  def self.all
    @@all
  end

  def new_appointment(date,patient)
    Appointment.new(date, patient, self)
  end

end 