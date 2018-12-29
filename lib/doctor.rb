class Doctor
  @@all = []
  attr_accessor :patients, :appointments, :name
  def initialize(name)
    @name =  name 
    @appointments = []
    @patients = []
    @@all << self 
  end
  
  def Doctor.all 
    @@all 
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end  
  
  def self.patients
    @patients
  end
  
  def self.appointments
    @appointments
  end
end