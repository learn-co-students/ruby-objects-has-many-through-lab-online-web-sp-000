class Patient 
  
  attr_accessor :date, :doctor 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(date, doctor)
    newappointment = Appointment.new(date, self, doctor)
    newappointment
  end 
  
  def self.all 
    @@all 
  end 
  
  def appointments 
    Appointment.all.select{|x| x.patient == self}
  end 
  
  def doctors 
    appointments.map{|x| x.doctor}
  end 
  
end 
    
    
    
    
    
    
    