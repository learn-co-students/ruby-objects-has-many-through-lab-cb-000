class Appointment
	attr_accessor :date, :doctor

	def initialize(date, doctor)
		@date = date
		@doctor = doctor
	end

	def patient
		#belongs to patient
		self
	end

	def doctor
		#belongs to a doctor
		@doctor
	end
end
