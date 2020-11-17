class Patient
	attr_accessor :name, :doctor, :appointments
@@all = []

	def initialize(name)
		@name = name
    @@all << self
		# @appointments = []
	end

  def self.all
    @@all
  end

	def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
    # @appointments << appointment
		# appointment.patient = self
    appointment
	end

	# def appointments
	#  @appointments
	# end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

	def doctors
		self.appointments.collect { |appointment| appointment.doctor }
	end
end
