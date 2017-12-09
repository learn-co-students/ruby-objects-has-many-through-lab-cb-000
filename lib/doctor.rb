class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
    self.patients << appointment.patient
  end
end
