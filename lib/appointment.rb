class Appointment
    @@all = []
    attr_accessor :patient, :doctor
    attr_reader :date
    def initialize(date, patient, doctor)
        @date = date
        @@all << self
        @patient = patient
        @doctor = doctor
    end
    def self.all
        @@all
    end

end