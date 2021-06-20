class Patient
    attr_accessor :doctor, :date, :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        appt = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.patient == self
        end
    end

    def doctors
        self.appointments.map do |appt|
            appt.doctor 
        end
    end

    def self.all
        @@all
    end

end 