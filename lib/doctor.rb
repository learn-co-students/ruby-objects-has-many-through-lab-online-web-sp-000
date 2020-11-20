class Doctor
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all do |appointment| appointment.doctor == self
    end
  end

  def new_appointment(date, patient)
    app = Appointment.new(date, patient, self)
    app
  end

  def patients
    appointments.collect do |appointment| appointment.patient
    end
  end

end
