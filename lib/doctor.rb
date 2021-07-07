class Doctor
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all.each do |doc|
      doc
    end
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end
  
  def patients
    appointments.map do |app|
      app.patient
    end
  end
end