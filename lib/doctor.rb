class Doctor
  attr_reader :name
  attr_accessor :patients, :appointments

 def initialize(name)
   @name = name
   @appointments = []
   @patients = []
 end

 def add_appointment(appointment)
   @appointments << appointment
   appointment.doctor = self
   @patients << appointment.patient

 end

end
