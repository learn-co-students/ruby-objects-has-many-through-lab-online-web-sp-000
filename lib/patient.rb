require 'pry'
class Patient
attr_accessor :name, :appointment, :doctor
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(doctor, date)
  Appointment.new(date, self, doctor)
end

def appointments
  Appointment.all.select do |appointment|
    appointment.patient == self
  end
end
def doctors
   Appointment.all.collect do |appointment|
      if appointment.patient == self
        appointment.doctor
        # appointment.date
      # binding.pry
      end
  end
end


def self.all
  @@all
end

end
