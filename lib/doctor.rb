class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select{ |d| d.doctor == self}
  end
  
  def patients
    doc_patients =[]
    Appointment.all.select do |p|
      if p.doctor == self
        doc_patients << p.patient
      end
    end
    doc_patients.uniq!
    doc_patients
  end
  
end