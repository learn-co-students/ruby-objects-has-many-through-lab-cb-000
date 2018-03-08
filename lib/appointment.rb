class Appointment
  attr_accessor :doctor, :patient
  def initialize(appointment, doctor)
    @appointment=appointment
    @doctor = doctor
    doctor.add_appointment(self)

  end
end
