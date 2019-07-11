class Patient 
  attr_accessor :name 

@@all = []

  def initialize(name)
  @name = name
  @@all << self
  @appointments = []
  end
  
  def self.all
    @@all
  end
  
  def appointments 
   @appointments
  end
  
  def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, self, doctor)
    @appointments << new_appointment
    new_appointment
  end
  
  def doctors
    doctors = appointments.map {|a| a.doctor}
    doctors
  end
  
end
