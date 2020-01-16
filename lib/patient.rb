class Patient

    attr_accessor :name, :appointment
    @@all = []

    def initialize(name)
        @name = name
        @appointment = appointment
 
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select {|app| app.patient.name == self.name}
    end

    def doctors
        doctors =[]
        Appointment.all.select do |app|
            if app.patient.name == self.name
                doctors << app.doctor
            end
        end
        doctors     
    end
end
