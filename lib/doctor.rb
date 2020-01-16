require 'pry'

class Doctor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @appointments = []
    end

    def self.all
        @@all 
    end

    def appointments
        Appointment.all.select {|app| app.doctor.name == self.name}
    end

    def new_appointment(patient,date)
        app = Appointment.new(date,patient,self)
    end

    def patients
        patients =[]
        Appointment.all.select do |app|
            if app.doctor.name == self.name
                patients << app.patient
            end
        end
        patients     
    end
end