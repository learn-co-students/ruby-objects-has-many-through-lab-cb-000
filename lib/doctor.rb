class Doctor
	attr_accessor :name, :appointment

	def initialize(name)
		@name = name
		@@appointments = []
	end

	def name
		@name
	end

	def add_appointment(appointment)
		@@appointments << appointment
		appointment.doctor = self
	end

	def appointments
		@@appointments
	end

	def patients
		#has many patients through appointments
		Patient.add_appointment(appointment) = []
	end
end