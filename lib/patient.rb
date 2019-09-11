require 'pry'

class Patient

  attr_reader :name, :appointment, :doctor
  
  @@all = []

  def initialize(name)
    @appointments = []
    @name = name
    @@all << self
    
  end
  
  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    @appointments << appointment
    appointment
  end

  def appointments
    @appointments
  end

  def doctors
    Appointment.all.collect do |appointment|
      appointment.doctor
    end
  end
end
end