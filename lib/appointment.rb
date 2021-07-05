class Appointment
  @@all = []
  attr_accessor :patient, :doctor, :date
  
  def initialize(patient, doctor, date)
    @doctor = doctor
    @patient = patient
    @date =  date
    @@all << self 
    doctor.appointments << self
    patient.appointments << self
    
    if doctor.patients.include?(patient) != true 
      doctor.patients << patient
    end
  
   if patient.doctors.include?(doctor) != true 
      patient.doctors << doctor 
    end
      
  end
  
  def Appointment.all 
    @@all 
  end
end 