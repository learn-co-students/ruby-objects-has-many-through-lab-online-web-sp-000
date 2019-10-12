class Doctor

  attr_reader :name, :appointment, :patient

  @@all_doc = []

  def initialize(name)
    @name = name
    @@all_doc << self
  end

  def self.all
    @@all_doc
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all
  end

  def patients
    appointments.map do |appointment|
      appointment.patients
    end
  end

end
