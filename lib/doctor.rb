require 'pry'

class Doctor
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

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    patients = Appointment.all.map{|appointment| appointment.patient}
    patients.uniq
  end

end
