class Patient
  attr_accessor :name

  @@all = []
  
  def initialize(name)
    @name = name
    save << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self}
  end

  def doctors
    appointments.collect { |appt| appt.doctor }
  end

  private
    def save
      self.class.all
    end
end