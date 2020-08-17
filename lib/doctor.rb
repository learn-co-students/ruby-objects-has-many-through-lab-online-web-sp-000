class Doctor
    attr_accessor :name, :date

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    # iterates through all Appointments and finds those belonging to this doctor.
    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    # iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
    def patients
        appointments.map do |appointment|
            appointment.patient
        end
    end

end