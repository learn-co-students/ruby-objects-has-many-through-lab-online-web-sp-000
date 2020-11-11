class Patient
  
  attr_accessor :name, :date, :doctor, :appointments
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(date, doctor)
    new_apt = Appointment.new(date, self, doctor)
    p new_apt
  end
  
  def self.all
    @@all
  end
  
  def appointments
    array_holder = [ ]
    Appointment.all.each do |appointment|
      if appointment.patient.name == self.name
        array_holder << appointment
      end
    end
      p array_holder
  end
  
  def doctors
    doctors_list = [ ]
    Appointment.all.each do |appointment|
      doctors_list << appointment.doctor
    end
    doctors_list
  end
  
  
end