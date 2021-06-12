class Appointment
    attr_accessor :date, :doctor, :patient, :name
    @@all = []
    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end
    
end