class Patient
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        appt = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|appointments| appointments.patient == self }
    end

    def doctors
        self.appointments.collect {|appointments| appointments.doctor}
    end
end
