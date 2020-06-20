class Patient

	attr_reader :name
	attr_accessor :appointments

	def initialize(name)
		@name = name
		@appointments = []
	end

	def add_appointment(app)
		@appointments << app
		app.patient = self
	end

	def doctors
		@appointments.collect {|app| app.doctor}
	end
	
end