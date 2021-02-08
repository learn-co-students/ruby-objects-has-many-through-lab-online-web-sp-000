class Patient
  attr_accessor :name, :appointment
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointment = appointment
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def new_appointment(date,doctor)
    Appointment.new(date,self,doctor) 
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
  end 
end
    
  def doctors
      self.appointments.collect do |appointment|
        appointment.doctor 
      end 
  end 
  
end 