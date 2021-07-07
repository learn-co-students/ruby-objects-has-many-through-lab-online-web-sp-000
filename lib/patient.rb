require 'pry'

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

  def new_appointment(date, doctor) #takes in a date and an instance of the Doctor class and creates a new Appointment.
                      #the Appointment should know that is belongs to the patient
    Appointment.new(date, self, doctor)
  end

  def appointments #iterates through the Appointments array and selects Appointments that belong to the patient
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors #iterates over that patient's Appointments and collects the doctor that belongs to each Appointment
    appointments.collect {|appointment| appointment.doctor}
  end

end
