class Doctor
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = Array.new
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @appointments << appointment
  end

  def patients()
    return self.appointments.collect{|appt| appt.patient}
  end
end
