class Doctor
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    #@appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient,date)
    appt = Appointment.new(date,patient,self)
    #@appointments << appt
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    self.appointments.collect do |appt|
      appt.patient
    end
  end

end
