class Patient

  attr_accessor :patient, :appointments

  def initialize(name)
    @patient = name
    @appointments = []

  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect{|a| a.doctor}
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self

  end

end
