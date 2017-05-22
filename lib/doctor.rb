class Doctor
  attr_accessor :appointments
  attr_reader :name

  def initialize name
    @name = name
    @appointments = []
  end

  def add_appointment appointment
    self.appointments << appointment
    appointment.doctor = self
    # appointment.patient.appointments << appointment
  end

  def patients
    self.appointments.map(&:patient)
  end
end
