class Patient
	attr_accessor :name, :appointment

	@@appointments

	def initialize(name)
		@name = name
	end

	def add_appointment(appointment)
		@@appointments.push(appointment)
	end
end