class Doctor

    attr_accessor :name, :appointments, :patients

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
        @appointments = []
        @patients = []
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end
end