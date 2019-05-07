class Doctor

  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def new_appointment(appointment)
    @appointment<<appointment
  end

  def appointments
    @appointments
  end

  def patients
    @appointment.collect {|appointment| appointment.patient}
  end
end
