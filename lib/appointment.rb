class Appointment
  attr_accessor :patient, :doctor, :date

  def initialize(date, doctor)
    doctor.add_appointment(self)
    @date = date
  end

end
