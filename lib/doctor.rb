class Doctor
	attr_accessor :name, :patient, :appointment

	def initialize(name)
		@name = name
		@appointments = []
	end

	def name
		@name
	end

	def add_appointment(appointment)
		@appointments << appointment
		#this appointment belongs to this doctor
		self.appointment = appointment
	end

	def appointments
		@appointments
	end

	def patients
		#has many patients through appointments
		# p = []
		# for each appointment in appointments
		#     p.add appointment.patient
		# @patients = p
		@appointments.collect do |appointment|
			appointment.patient
		end
	end
end