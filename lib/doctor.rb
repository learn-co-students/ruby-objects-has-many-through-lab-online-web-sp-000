require 'pry'
class Doctor
    attr_accessor :date, :patient, :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, patient)
        appointment = Appointment.new(date, patient, self)        
    end

    def appointments
        binding.pry
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end

    def patients
        self.appointments.select do |appt|
           appt.patient
        end
    end

    def self.all
        @@all
    end

end