
class Patient 
  attr_accessor :name, :appointments
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def new_appointment(doctor,date)
    appointment = Appointment.new(self,doctor,date)
  end
    
  def self.all 
    @@all 
  end 
  
  def appointments 
    appointments = Appointment.all 
    appointments.select do |p|
      p.patient == self
    end
  end
  
  def doctors 
    appointments.collect do |d|
      d.doctor 
    end 
  end
  
  
    
  
end