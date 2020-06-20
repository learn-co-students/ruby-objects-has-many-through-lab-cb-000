class Appointment

	attr_accessor :date, :doctor, :patient

	def initialize(data, doctor)
		@date = date
		@doctor = doctor
		@doctor.appointments << self
	end

end