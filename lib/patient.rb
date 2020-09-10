class Patient

    attr_accessor :name


    @@all = []


    def initialize(name)
        @name = name
        @@all << self
    end

#binding.pry
       def doctors
        appointments.collect {|appointment| appointment.doctor}
    end


    def new_appointment(date, doctor) 
        Appointment.new(date, self, doctor)

end


def appointments
    Appointment.all.select {|appointments| appointments.patient == self}
   end


def self.all
    @@all
end

end

