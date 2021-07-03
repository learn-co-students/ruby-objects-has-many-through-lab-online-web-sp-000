class Appointment
  attr_accessor :date
  attr_reader :doctor, :patient
  @@all = []
  
  def initialize(date, doctor, patient)
    @date = date 
    @doctor = doctor 
    @patient = patient
    @@all << self
  end 
  
  def self.all 
    @@all
  end
  
   def patient
     @patient
  end

  def doctor
    @doctor
  end
  
  
end