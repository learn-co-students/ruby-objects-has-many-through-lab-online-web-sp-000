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

	def appointments
		# puts Appointment.all.inspect
		Appointment.all.select {|app| app.doctor == self}
	end

	def new_appointment(patient, date)
		Appointment.new(date, patient, self)
	end

	def patients
		Appointment.all.map {|app| app.patient if app.doctor == self}
	end
end