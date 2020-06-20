class Doctor
  attr_reader :name
  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    @appointments.collect do |appo|
      appo.patient
    end
  end
end
