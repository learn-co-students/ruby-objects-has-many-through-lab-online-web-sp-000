class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  # Returns all appointments associated with this Doctor
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  # Creates a new appointment for the Doctor, given a
  # patient and a date
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    my_patients = []
    appointments.each do |appt|
      my_patients << appt.patient if !my_patients.include?(appt.patient)
    end
    my_patients
  end

end
