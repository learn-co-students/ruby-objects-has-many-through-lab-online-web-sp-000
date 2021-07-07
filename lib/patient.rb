class Patient

  attr_reader :name, :appointment, :doctor, :date

  @@all_patients = []

  def initialize(name)
    @name = name
    @@all_patients << self
  end

  def self.all
    @@all_patients
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

end
