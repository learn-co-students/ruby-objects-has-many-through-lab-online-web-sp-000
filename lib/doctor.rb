class Doctor 
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  
  def new_appointment(patient, date)
    new_appointment = Appointment.new(date, patient, self)
    @appointments << new_appointment
    new_appointment
  end
  
  def appointments 
    @appointments.select {|a| a.doctor == self}
  end
  
  def patients 
    @appointments.map {|a| a.patient }
  end
    
  
  
end