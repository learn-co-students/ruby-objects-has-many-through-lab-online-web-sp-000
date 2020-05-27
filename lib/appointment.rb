require "pry"
class Appointment

    attr_reader :doctor, :patient

    @@all = []

    def self.all
        @@all
    end

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        doctor.appointments << self
        patient.appointments << self
        doctor.patients << patient
        patient.doctors << doctor
        @@all << self
    end

end