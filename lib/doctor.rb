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
  
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
  
  def appointments
    Appointment.all.select{|i| i.doctor == self}
  end
  
  def patients
    appointments.map{|i| i.patient}
  end
end