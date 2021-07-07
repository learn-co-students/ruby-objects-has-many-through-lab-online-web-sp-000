class Doctor
  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @doctor
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    appointments.map do |d|
      d.patient
    end
  end
end
