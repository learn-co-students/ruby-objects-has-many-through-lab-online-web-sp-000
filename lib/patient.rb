class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select { |p| p.patient == self}
  end
  
  def doctors
    my_doctors = []
    Appointment.all.select do |a|
      if a.patient == self
        my_doctors << a.doctor
      end
    end
    my_doctors.uniq!
    my_doctors
  end
  
  
end  