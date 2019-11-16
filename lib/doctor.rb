require 'pry'  ### loads pry gem/library so that binding.pry can be run

class Doctor  ### instantiates the doctor class
  attr_accessor :doctor_name, :appointments, :all_patients
  
  @@all_Doctors = []
  
  
  def initialize(doctor_name)
    @doctor_name = doctor_name
    @@all_Doctors << self
    @appointments = []
    @all_patients = []
  end
  
  def self.all_Doctors 
    @@all_Doctors
  end
  
  def new_appointment(patient_name, appt_date)

    self.appointments << Appointments.new(appt_date, patient_name, doctor_name)
    self.appointments.last.doctor_name = self
    self.all_patients << self.appointments.last.patient_name
    self.appointments.last
   # binding.pry
  end 
    
  
end ### end of Doctor class~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


class Patient
  attr_accessor :patient_name, :appointments
  
  @@all_Patients = []
  
  def initialize(patient_name)
    @patient_name = self
    @appointments = []
    @@all_Patients << self
  end
  
  def new_appointment(doctor_name, appt_date)
    #binding.pry
    self.appointments << Appointments.new(appt_date, patient_name, doctor_name)
    self.appointments.last
   # binding.pry
  end
  
  def self.all_Patients
    @@all_Patients
  end
  
  def doctors
    doctors = []
    self.appointments.each do |each_appt|
    #  binding.pry
      doctors << each_appt.doctor_name
    end
   doctors
  end
  
end ### end of Patient class~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


class Appointments
  
  attr_accessor :patient_name, :appt_date, :doctor_name
  
  @@all_Appointments = []
  
  def initialize(appt_date, patient_name, doctor_name)
    @patient_name = patient_name
    @appt_date = appt_date
    @doctor_name = doctor_name
    @@all_Appointments << self
  end
  
  def self.all_Appointments
    @@all_Appointments
  end
  

  
end ### end of Appointments class

=begin
The Patient class needs an instance method, #doctors, that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.

  def artists
    artist_name = []
    self.all_songs.each do |all_songs|
      artist_name << all_songs.artist_name
    end
    artist_name
  end

=end