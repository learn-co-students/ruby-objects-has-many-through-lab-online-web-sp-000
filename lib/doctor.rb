class Doctor

    attr_accessor :name, :patients
    attr_reader :appointments

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def patients
        appointments.collect {|appointment| appointment.patient}
    end


    def appointments
        Appointment.all.select do |appointments|
            appointments.doctor == self
    
    end
end

def new_appointment(date, patient) 
        Appointment.new(date, patient, self)

end
end