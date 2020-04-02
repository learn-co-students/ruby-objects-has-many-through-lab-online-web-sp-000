class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  # Creates a new appointment given a doctor and a date
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  # Returns all appointments associated with this Patient
  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  # Returns all doctors associated with this Patient
  def doctors
    doctors = []
    appointments.each do |appt|
      doctors << appt.doctor if !doctors.include?(appt.doctor)
    end
    doctors
  end

end
