class Patient #has many
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
    @appointments = []
  end 
  def self.all 
    @@all 
  end 
  def new_appointment(doctor, date)
    new_appt = Appointment.new(date, self, doctor)
    @appointments << new_appt
    new_appt 
  end 
  def appointments #reader method
    @appointments
  end 
  def doctors 
    @appointments.map do |appt|
      appt.doctor
    end 
  end 
end 