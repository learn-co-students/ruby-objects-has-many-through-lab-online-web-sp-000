require 'pry'

class Patient
  attr_accessor :name
  @@all = []

  def initialize(inputName)
    @name = inputName
    @appointments = []
    @doctors = []
    @@all << self
  end

  def new_appointment(date, doctor)
    newApp = Appointment.new(date, self, doctor)
    self.add_appointment(newApp)
    self.add_doctor(doctor)
    doctor.add_appointment(newApp)
    doctor.add_patient(self)
  #  binding.pry
    return newApp
  end

  def add_appointment(app)
    if !(self.appointments.include?(app))
      @appointments << app
    end
    return nil
  end

  def add_doctor(doc)
    if !(self.doctors.include?(doc))
      @doctors << doc
    end
    return nil
  end

  def doctors
    @doctors
  end

  def appointments
    @appointments
  end

  def self.all
    @@all
  end

end
