class Appointment

  attr_accessor :date, :patient, :doctor
  @@all=[]

  def initialize(patient,date,doctor)
    @date=date
    @doctor=doctor
    @patient=patient
    @@all<<self
  end

  def self.all
    @@all
  end

end
