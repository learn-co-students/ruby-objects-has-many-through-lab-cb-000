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

class Patient
  attr_reader :name, :appointments, :doctors

 def initialize(name)
   @name = name
   @doctors = []
   @appointments = []
 end

 def add_appointment(appointment)
   appointment.patient = self
   @doctors << appointment.doctor
   @appointments << appointment

 end

end

class Appointment
  attr_reader :date
  attr_accessor :patient, :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self
  end

end
