

class Patient

  attr_accessor :appointments, :name, :doctors

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.add_appointment(self)
  end

  def doctors
    @appointments.collect(&:doctor)
  end


end
