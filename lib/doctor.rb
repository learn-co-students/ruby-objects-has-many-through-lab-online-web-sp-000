class Appointment
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self << @@all
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(patient, date)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def patients
        appointments.map(&:patient)
    end
end
