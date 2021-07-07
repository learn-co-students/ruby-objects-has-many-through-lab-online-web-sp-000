class Patient
attr_reader :name, :appointment, :doctor
@@all = []

  def initialize(name)
    @name = name
    @@all << self  
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    Appointment.all.map {|appointment| appointment.doctor}
  end
  
  #class Method 
  
  def self.all 
    @@all 
  end 
  
end
