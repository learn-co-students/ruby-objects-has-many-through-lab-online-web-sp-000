class Patient
  
  @@all = []
  
  attr_reader :name
  
  def initialize(patient_name)
    @name = patient_name
    @@all << self 
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select{ |appointment| appointment.patient == self }
  end
  
  def doctors
    self.appointments.collect{ |appointment| appointment.doctor }
  end
  
  def self.all
    @@all
  end
end