class Patient
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def new_appointment
  end
  
  def appointments
  end
  
  def doctors
  end
  
end