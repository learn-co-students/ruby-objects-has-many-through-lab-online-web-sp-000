class Patient

    attr_accessor :appointments, :doctors

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @appointments = []
        @doctors = []
        @@all << self
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end
end