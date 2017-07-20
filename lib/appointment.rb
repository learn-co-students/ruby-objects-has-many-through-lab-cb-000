class Appointment
  attr_accessor :date, :patient
  attr_reader :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    self.doctor.add_appointment(self)
  end
end
