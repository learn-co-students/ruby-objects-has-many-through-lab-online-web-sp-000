class Patient
  attr_accessor :appointments
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, date, self)
  end

  def self.all
    @@all
  end

  def appointments
    doctors.all.select do |doctor|
      doctor.appointments == self
    end
  end
                                        #fix these two methods they break the code
  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end
  end


end
