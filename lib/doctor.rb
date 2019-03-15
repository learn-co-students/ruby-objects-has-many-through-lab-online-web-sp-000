require 'pry'

class Doctor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    patients_array = []
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        patients_array << appointment.patient
      end
    end
    patients_array
  end

  def self.all
    @@all
  end
end
