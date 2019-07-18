class Patient
  attr_accessor :name, :appointment, :appointments, :date, :doctor, :all
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(self, date, doctor)
    @appointments << new_appointment
    new_appointment
#    binding.pry
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

  def self.all
    @@all
  end


end
