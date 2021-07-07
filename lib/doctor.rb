class Doctor

  attr_reader :name
  attr_accessor :patient, :appointment, :date

  @@all= []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    new_appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    # appointments.map do |o|
    #   o.patient
    #end
  appointments.collect {|appointment| appointment.patient}
  end

end
