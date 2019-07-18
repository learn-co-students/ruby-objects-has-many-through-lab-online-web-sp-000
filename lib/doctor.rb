class Doctor
  attr_accessor :name, :all, :appointments, :patients
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def new_appointment(date, patient)
    new_appointment = Appointment.new(date, patient, self)
    @appointments << new_appointment
    new_appointment
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient 
    end
  end

  def self.all
    @@all
  end



end
