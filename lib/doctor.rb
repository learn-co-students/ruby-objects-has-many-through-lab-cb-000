class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self #=> assoc. this app. with this inst. of Dr.
  end

  def patients #=> assoc. dr. patients via app.
    @appointments.collect{|appointment| appointment.patient}
  end
end