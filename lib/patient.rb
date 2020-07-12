class Patient
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
    
  @@all = []
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end
  
  def doctors
    appointments.collect do |pat_appt|
      pat_appt.doctor
    end
  end
end