require 'pry'
class Patient
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|apoint| apoint.patient == self}
    end

    def doctors
        a = self.appointments
        a.collect{|appoint| appoint.doctor}
    end

end