class Doctor
  attr_accessor :name, :appointments, :patient, :date, :doctor
    @@all = []
    
  def initialize(name)
    @name = name
    @date  = date
    @doctor = doctor
    @appointments = []
    @patient = []
    @@all << self
  end
  
  
  
  def new_appointment(patient, date)
    
  appointment=Appointment.new(date, patient, self)
  @appointments  << appointment
  appointment.doctor = self 
  appointment
  
  end
  
  
  
  def appointments
      Appointment.all.select do |appointments|
      appointments.doctor == self
   end
end 
  
 
  def patients
      Appointment.all.collect do |appointments|
      appointments.patient 
      end
  end
  
  
  
   def self.all
    @@all
  end
  
  
end