class Appointment
  attr_accessor :patient, :date, :appointment, :date, :doctor
  attr_reader :name

   def initialize(patient, doctor, date)
     @patient = patient
     @name = doctor
     @date = date
  end

end
