class Appointment 
  @@all = [] 
  attr_reader :name, :patient, :doctor, :date
  
  def initialize(patient ="", doctor = "", date = "")
    @patient = patient 
    @doctor = doctor 
    @name = name 
    @@all << self 
  end 
  
  def patients 
    self.patient
  end 
  
  def doctors
    self.doctor
  end
  
  #class Method 
  def self.all 
    @@all 
  end 
  
  
end 