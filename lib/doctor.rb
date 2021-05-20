require 'pry'
class Doctor

    attr_accessor :name, :appointment, :patient
  
    @@all = []
  
    def initialize(name)
      @name = name
      @appointment = appointment
      @patient = patient
      @@all << self
    end
  
    def self.all
      @@all
    end
    
    
    def new_appointment(date, patient)
        #binding.pry
        Appointment.new(patient, self, date)
      
    end
  
    def appointments
      Appointment.all.select do |app|
        app.doctor == self

      end
      #binding.pry
    end
  
    def patients
      appointments.map do |appointment|
        appointment.patients
      end
    end
  
  end