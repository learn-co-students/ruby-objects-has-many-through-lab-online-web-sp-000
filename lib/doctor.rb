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
end
