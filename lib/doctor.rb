class Doctor
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = appointments
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def patients
    appointments.collect do |appointment|
      appointment.patient
    end
  end

end
