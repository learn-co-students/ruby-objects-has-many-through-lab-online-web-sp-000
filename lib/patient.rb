class Patient
  attr_accessor :doctor, :date, :appointments
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

  def new_appointment(doctor, date)
    appointment = Appointment.new(doctor, self, date)
    @appointments << appointment
    appointment
  end

  def doctors
    @appointments.map do |appointment|
      appointment.doctor
    end
  end
end