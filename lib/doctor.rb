class Doctor
  attr_accessor :name
  attr_reader :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appt = Appointment.new(patient, self, date)
    @appointments << appt
    appt
  end

  def patients
    @appointments.collect {|appt| appt.patient}
  end


end
