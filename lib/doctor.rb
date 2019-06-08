class Doctor
  attr_accessor :name, :appointments
  attr_reader :patients
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    Doctor.all << self
  end
  
  def new(doc_name)
    name = doc_name
    Doctor.all << self
  end
  
  def new_appointment(patient, date)
    n_a = Appointment.new(date, patient, self)
    appointments << n_a
    patients << patient
    n_a
  end
  
  def self.all
    @@all
  end
end