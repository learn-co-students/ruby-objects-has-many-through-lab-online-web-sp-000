class Doctor
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end;

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def patients
      collection = []
      Appointment.all.select{|appt| appt.doctor == self}.each do |appt|
        collection << appt.patient
      end
      collection
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end

  def self.all
    @@all
  end
end
