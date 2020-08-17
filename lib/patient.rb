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

    # takes in a date and an instance of the Doctor class and creates a new Appointment
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    #  iterates through the Appointments array and returns Appointments that belong to the patient.
    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    # iterates over that patient's Appointments and collects the doctor that belongs to each Appointment
    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end
end

