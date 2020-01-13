class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  # takes in an argument of a doctor and a date and creates a new Appointment.
  # The Appointment should know that it belongs to the patient.
  # needed to pass in arguments in order that test outlined them (doctor, patient, date)
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  # iterates through the Appointments array and
  # returns Appointments that belong to the patient.
  def appointments
    Appointment.all.select {|appointments| appointments.patient == self}
  end

  # that iterates over that patient's Appointments and
  # collects the doctor that belongs to each Appointment.
  def doctors
    # binding.pry
    self.appointments.collect {|appointment| appointment.date}
  end

end
