class Doctor
	attr_accessor :name, :appointment

	def initialize(name)
		@name = name
		@appointments = []
	end

	def name
		@name
	end

	def add_appointment
		@appointments << Patient.add_appointment(@appointment)
		@appointments
	end

	def appointments
		@appointments
	end

	def patients
		#has many patients through appointments
		@patients = []
		@patients = Appointment.itself
	end
end