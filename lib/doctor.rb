class Doctor
  attr_accessor :appointments, :patient, :date
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(self, patient, date)
    @appointments << appointment
    appointment
  end

  def patients
    @appointments.map do |appointment|
      appointment.patient
    end
  end
end