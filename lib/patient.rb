class Patient

  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    my_appt = Appointment.new(date, self, doctor)
    self.appointment = my_appt
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    appointments.collect {|my_appt| my_appt.doctor}
  end

end
