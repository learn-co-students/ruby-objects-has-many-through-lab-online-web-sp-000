class Doctor
  
  attr_accessor :name, :date, :patients, :appointments
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all
  end
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
  end
  
  def patients
    patient_array = [ ]
    Appointment.all.each do |appointment|
      patient_array << appointment.patient
    end
    patient_array
  end
  
  
end