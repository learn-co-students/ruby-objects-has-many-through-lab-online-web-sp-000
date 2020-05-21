class Patient 
  attr_accessor :name, :date, :doctor, :patient
  @@all = []
  
  def initialize (name)
    @name = name
    @doctor = doctor
    @patient = patient 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, doctor)
    date = Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.name == self
    end
  end
  
  def new(name)
    name = Patient.new(name)
  end 
  
  def doctors 
    Appointment.all.select do |date|
      date.patient == self
    end
  end 
  
end 