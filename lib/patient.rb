class Patient
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = Array.new
  end

  def add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment
  end

  def doctors()
    return self.appointments.collect{|appt| appt.doctor}
  end
end
