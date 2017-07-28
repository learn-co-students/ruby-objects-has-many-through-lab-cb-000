class Appointment
	attr_accessor :appointment, :patient, :doctor

	def initialize(appointment, doctor)
		@doctor = doctor
		@appointment = appointment
		@doctor.add_appointment(self)
	end

	def patient
		self.patient = @patient
	end

	def doctor
		@doctor
	end

	def doctor
		self.doctor = @doctor 
	end
end
