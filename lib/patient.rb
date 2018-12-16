
class Patient 
  attr_accessor :name, :appointments
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self 
  end
  
  def new_appointment(doctor,date)
    doctor = Doctor.new(doctor)
    appointment = Appointment.new(self,doctor,date)
    @appointments << appointment
  end
    
  def self.all 
    @@all 
  end 
  
  
    
  
end