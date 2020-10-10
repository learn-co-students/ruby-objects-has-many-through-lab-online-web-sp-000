class Doctor
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, patient)
        appt = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select{ |a| a.doctor = self }
    end

    def patients
        patients = []
        appointments.map{ |a| patients << a.patient }
        patients
    end
end