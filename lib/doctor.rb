class Doctor 
  attr_reader :name, :appointment, :patient
  @@all = [] 
  
  def initialize(name) 
    @@all << self 
    @name = name 
  end 
  
  def self.all 
    @@all 
  end  
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end 
  
  def appointments 
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end 
  end 
  
  def patients
    appointment.map do |appointment| 
      appointment.patients
    end 
  end 
end 