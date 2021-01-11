class Doctor
  attr_reader :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments 
    Appointment.all.select {|app| app.doctor.name == @name }
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 
  
  def patients 
    Appointment.all.map do |app|
      if app.doctor.name == @name
        app.patient
      end
    end
  end

end