class Appointment
  
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    save
  end
  
  def save
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def doctor
    @doctor
  end
  
  def doctor=(doctor)
    @doctor = doctor
  end
  
  def patient
    @patient
  end
  
  def patient=(patient)
    @patient = patient
  end 
end 