class Patient
  @@all = []
  attr_accessor :name, :appointments
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor_oi, date)
    Appointment.new(date, self, doctor_oi)
  end
  
  def appointments
    Appointment.all.select {|i| i.patient == self}
  end
  
  def doctors
    self.appointments.map {|i| i.doctor}
  end
  
end
