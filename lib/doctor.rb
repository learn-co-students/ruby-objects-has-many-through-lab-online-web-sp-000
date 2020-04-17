
class Doctor

  @@all = []

  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    new_app = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select{|app| app.doctor == self}
  end

  def patients
    self.appointments.map {|app| app.patient}
  end
end
