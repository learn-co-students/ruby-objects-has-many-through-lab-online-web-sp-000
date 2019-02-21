class Patient
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select { |appointment| appointment.patient.name == @name }
  end
  
  def doctors
    appointments.collect { |appointment| appointment.doctor }
  end
  
  def self.all
    @@all
  end
end