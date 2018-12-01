class Doctor
    attr_accessor :name, :appointment
     @@allDoctor = []
     
    def initialize(name)
        @name = name
        @appointment = appointment
        @@allDoctor << self        
    end

    def self.all 
        @@allDoctor
    end
    
        # instance of patient class and date, create appt. 
        # appt belongs to doctor
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end
    
        # iterates thru appts, find patients for appts.
    def patients
       self.appointments.collect do |appt|
        appt.patient
       end
    end
end