class Doctor
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.find_all {|appointment| appointment.doctor == self}
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def patients
    appointments.collect {|appointment| appointment.patient}
  end

end
