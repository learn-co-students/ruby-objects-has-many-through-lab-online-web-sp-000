class Patient
  attr_accessor :appointments, :doctors

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def new_appointment(doctor, date)
    @date = date
    @doctor = doctor
    self.doctors << doctor
    @name = Appointment.new(date, self, doctor)
  end


  def self.all
    @@all
  end

end
