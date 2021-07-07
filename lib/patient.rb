class Patient
attr_accessor :name
#attr_accessor :doctor, :date, :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    #new_appointment = Appointment.new(self, doctor, date)
    new_appointment = Appointment.new(date, doctor, self)
    end

  def appointments
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    self.appointments.collect do |appts|
      appts.doctor
    end
  end

end
