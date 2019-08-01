class Patient
  @@all = []
  
  attr_accessor :name, :doctor, :date, :appointments
  
  def initialize(name)
    @name = name
    @doctor = doctor
    @date = date
    @appointments = []
    @@all << self
  end
  
  def new_appointment(doctor, date)
      appointment=Appointment.new(date, self, doctor)
      @appointments  << appointment
      appointment.patient = self 
      appointment
  end
  
   def appointments
      Appointment.all.select do |appointment|
      appointment.patient == self
   end
  end
  
   def doctors
       Appointment.all.collect do |appointments|
       appointments.doctor 
    end
  end
  
  
   def patients
       Appointment.all.collect do |appointments|
       appointments.self == self
    end
  end
  
  
  def self.all
    @@all
  end
end