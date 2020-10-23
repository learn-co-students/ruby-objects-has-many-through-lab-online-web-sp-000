class Doctor

  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    the_appt = Appointment.new(date, patient, self)
    self.appointment = the_appt
  end

  def appointments
    Appointment.all.select {|appts| appts.doctor == self}
  end

  def patients
    appointments.collect {|my_appts| my_appts.patient}
  end

end
