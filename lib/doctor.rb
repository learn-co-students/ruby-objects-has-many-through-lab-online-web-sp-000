class Doctor
  attr_accessor :name, :patient, :appointment
  @@all = [] 
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor 
    end 
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 
  
  def patients
    Appointment.all.map do |appointments|
    appointments.patient
   end 
  end 
end 