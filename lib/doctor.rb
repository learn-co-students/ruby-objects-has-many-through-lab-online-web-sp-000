class Doctor
  
  attr_accessor :appointment, :patient, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 

  def new_appointment(date = "" , patient)
    new_appointment = Appointment.new(date, self, patient)
  end
  
  def appointments
    Appointment.all.select { |a| a.doctor == self}
  end
  
  def patients
    appointments.collect { |a| a.patient}
 end  
end