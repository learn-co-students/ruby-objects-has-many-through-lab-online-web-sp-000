class Patient
 
 attr_reader :name, :appointment, :doctor

  @@all_patients = []
  
   def initialize(name)
    @name = name
    @@all_patients << self
  end

   def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

   def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

   def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
  
  def self.all 
    @@all_patients
  end
  
end