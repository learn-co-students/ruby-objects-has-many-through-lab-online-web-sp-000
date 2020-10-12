class Patient

  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end


  def doctors
    Appointment.all.collect do |appointment|
      appointment.doctor
    end
  end

end
