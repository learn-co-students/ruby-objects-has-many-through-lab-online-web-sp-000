class Patient
  attr_accessor :name, :appointments
  @@all = []
  
  def initialize(name)
    @name =name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end 
  
  def appointments
    Appointment.all.collect do |appointment|
      if appointment.patient == self 
        appointment
      end
    end 
  end 
  
  def doctors 
   Appointment.all.collect do |appointment|
      if appointment.patient == self 
        appointment.doctor
      end
    end 
  end 
end 