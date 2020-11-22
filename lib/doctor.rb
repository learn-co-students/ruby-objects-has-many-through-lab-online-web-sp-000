class Doctor
  @@all = []
  attr_accessor :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
    Appointment.all.map do |p|
      p.patient
    end
  end
end
