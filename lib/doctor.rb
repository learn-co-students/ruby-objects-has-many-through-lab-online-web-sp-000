class Doctor
    attr_accessor :date, :patient
    @@all = []
    def initialize()
        @@all << self
    end

    def new_appointment(date, patient)
        appointment = Appointment.new(date, patient, self)        
    end

    def appointments
        Appointment.all.each do |appt|
            appt.doctor == self
        end
    end

    def patients
        Patient.all.each do |pt|
            pt.doctor == self
        end
    end

    def self.all
        @@all
    end

end