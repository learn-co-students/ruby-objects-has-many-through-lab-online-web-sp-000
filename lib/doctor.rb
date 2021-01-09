class Doctor 
  attr_accessor :name, :appointments
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
    @appointments = []
    @patients = []
  end 
  
  def appointments
    @appointments = Appointment.all.select do |point| 
       point.doctor == self
    end 
  end 
 
  
  def new_appointment(a, b)
    new_appointment = Appointment.new(a, b, self)
  end 
  
  def patients 
    @patients = 
    appointments.map {|x| x.patient}
    ##collect all patients that the dr has had 
  end 

  
end 