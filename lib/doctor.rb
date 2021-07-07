class Doctor
  attr_accessor :name, :appointment, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient) #takes in a date and an instance of the Patient class and creates a new Appointment.
                      #That Appointment should know that is belongs to the doctor
    Appointment.new(date, patient, self)
  end

  def appointments #iterates through all Appointments and selects those belonging to this doctor
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients #iterates over that doctor's Appointments and collects the patient that belongs to each Appointment
    appointments.collect {|appointment| appointment.patient}
  end
end
