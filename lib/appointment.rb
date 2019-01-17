class Appointment
  attr_reader :doctor, :patient
  @@all = []
  def initialize(date,patient,doctor)
    @date = date
    @@all<<self
  end
def  self.all
  @@all
end
end
