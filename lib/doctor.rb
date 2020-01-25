class Doctor
    attr_accessor :name 
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all 
        @@all
    end 

    def new_appointment(name, genre)
        Appointment.new(name, self, genre)
    end

    def appointments
        Appointment.all.select do |song|
            song.artist == self 
        end
    end 

    def patients 
        appointments.map {|song| song.patient}
    end
end 