class Patient

    attr_accessor :appointments
   attr_reader :doctors

    def initialize(name)
        @name = name
    end

#binding.pry
       def doctors
        appointments.collect {|appointment| appointment.doctor}
    end


    def new_appointment(date, doctor) 
        Appointment.new(date, self)

end


def appointments
    Appointment.all.select {|appointments| appointments.patient == self}
   end
end

