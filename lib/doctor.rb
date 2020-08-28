class Doctor
  attr_reader :name
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    self.appointments.map{|appt| appt.patient}
  end
end


# class Appointment
#   attr_reader :date, :patient, :doctor
#   @@all = []
  
#   def initialize(date, patient, doctor)
#     @date = date
#     @patient = patient
#     @doctor = doctor
#     @@all << self
#   end
  
#   def self.all
#     @@all
#   end
# end


# class Patient
#   attr_reader :name
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @@all << name
#   end
  
#   def self.all
#     @@all
#   end
  
#   def new_appointment(date, doctor)
#     Appointment.new(date, self, doctor)
#   end
  
#   def appointments
#     Appointment.all.select{|appt| appt.patient == self}
#   end

#   def doctors
#     self.appointments.map{|appt| appt.doctor}
#   end
# end

# doctor_who = Doctor.new("Dr. Who")
# stacey = Patient.new("Stacey")
# zero = Patient.new('Zero')
# good = Patient.new('Good')
# puts Patient.all