class Doctor
  @@all = []
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient_oi, date)
    Appointment.new(date, patient_oi, self)
  end
  
  def appointments
    Appointment.all.select {|i| i.doctor == self}
  end
  
  def patients
    self.appointments.map {|i| i.patient}
  end
  
end
