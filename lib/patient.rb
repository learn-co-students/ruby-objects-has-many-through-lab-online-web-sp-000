class Patient
    attr_accessor :name, :appointment
    @@allPatient = []

    def initialize(name)
        @name = name
        @appointment = appointment
        @@allPatient << self        
    end

    def self.all 
        @@allPatient 
    end

    def new_appointment (date, doctor)
        Appointment.new(doctor, self, date)
    # create new appt, belongs to patient
    end

    def appointments
        Appointment.all.select do |appt|
            appt.patient == self
        end

        # iterate over patient appts, collect patient appt.
    end

    def doctors
        self.appointments.collect do |appt|
            appt.doctor
        end
        # iterate over appts, collect doctor

    end
end