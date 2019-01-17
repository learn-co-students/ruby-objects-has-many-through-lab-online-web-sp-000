class Doctor
  attr_accessor :name, :appointments 
  @@all = []
  
  def initialize(name)
    @appointments = []
    @name = name 
    @@all << self
  end
  
  def new_appointment(date, patient)
    new_appointment = Appointment.new(date, self, patient)
    @appointments << new_appointment
    new_appointment
  end
  
  def self.all 
    @@all 
  end
  
  def patients
    @appointments.collect { |appointment| appointment.patient }.uniq 
  end 
  
end