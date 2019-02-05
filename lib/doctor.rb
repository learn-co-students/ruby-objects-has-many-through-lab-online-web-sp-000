class Doctor #has many 
  attr_accessor :name 
  attr_reader :appointments
  @@all = [] 
  def initialize(name)
    @name = name 
    @@all << self
    @appointments = []
  end 
  def self.all 
    @@all
  end 
  def new_appointment(patient, date)
    new_appt = Appointment.new(date, patient, self)
    @appointments << new_appt 
    new_appt
  end 
  def patients
    @appointments.map do |appts|
      appts.patient
    end 
  end 
end 