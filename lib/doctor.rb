class Doctor

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def patients
    Appointment.all.collect do |appointment|
      appointment.patient
    end
  end
end
