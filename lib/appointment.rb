class Appointment
  # belongs to a patient
  attr_accessor :date, :doctor, :patient

  # initializes with a date and a doctor
  # belongs to a doctor
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
end
