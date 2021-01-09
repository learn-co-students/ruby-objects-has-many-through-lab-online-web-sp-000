class Patient
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
  
  def new_appointment(a, b)
    new_appointment = Appointment.new(a, self, b)
  end 
  
  def appointments 
    @appointments =
    Appointment.all.select {|x| x.patient == self}
    ## set all appointments for this patient to the one that the patient has attended 
  end 
  
  def doctors 
    appointments.map {|x| x.doctor}
    ## collect all dr's that this patient has had at an apointment
  end 
  
end 