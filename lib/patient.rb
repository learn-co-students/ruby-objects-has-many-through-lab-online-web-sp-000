class Patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    new_appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select{|appoinment| appoinment.patient == self}
  end

  def doctors
    appointments.collect{|appoinment| appoinment.doctor}
  end
end
