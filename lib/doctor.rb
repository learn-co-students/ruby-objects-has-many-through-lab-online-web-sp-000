class Doctor
  attr_accessor :name, :appointments
  @@all = []

  def initialize(inputName)
    @name = inputName
    @@all << self
    @appointments = []
    @patients = []
  end

  def new_appointment(date, patient)
    newApp = Appointment.new(date, patient, self)
    self.add_appointment(newApp)
    self.add_patient(patient)
    return newApp
  end

  def add_appointment(app)
    if !(self.appointments.include?(app))
      @appointments << app
    end
    return nil
  end

  def add_patient(pat)
    if !(self.patients.include?(pat))
      @patients << pat
    end
    return nil
  end

  def self.all
    return @@all
  end

  def appointments
    @appointments
  end

  def patients
    @patients
  end

end
