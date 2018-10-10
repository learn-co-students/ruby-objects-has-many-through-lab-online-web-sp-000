class Patient
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all.each do |patient|
      patient
    end
  end
  
  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def doctors
    appointments.map do |app|
      app.doctor
    end
  end
end