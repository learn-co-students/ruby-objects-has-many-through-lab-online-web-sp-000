class Patient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |doctor|
      doctor.patient == self
    end
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end


end
