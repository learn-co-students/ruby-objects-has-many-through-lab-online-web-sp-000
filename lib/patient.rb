class Patient
  attr_accessor :name, :appointments 
  @@all = []
  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self
  end
  
  def new_appointment(doctor, date)
    apt = Appointment.new(self, doctor, date)
    @appointments << apt 
    apt
  end
  
  def self.all
    @@all
  end
  
  def doctors
    @appointments.collect { |appointment| appointment.doctor }.uniq
  end
end 