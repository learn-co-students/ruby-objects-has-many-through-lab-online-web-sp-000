class Appointment


    @@all = []

    attr_accessor :date, :doctor, :patient


    def initialize(date, patient, doctor) 
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def patient
            self.all.patient
           end



    def self.all
        @@all
    end
end
