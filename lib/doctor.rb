class Doctor 

attr_reader :name, :appointment, :patient 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.map {|appointment| appointment.patients} 
  end
 
  #class methods 
  
  def self.all 
    @@all 
  end 
end 