class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end

  def doctors
    collection = []
    appointments.each do |appt|
      collection << appt.doctor
    end
    collection
  end

  def self.all
    @@all
  end

end
