class Patient
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointments.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def doctors
    Appointments.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
end