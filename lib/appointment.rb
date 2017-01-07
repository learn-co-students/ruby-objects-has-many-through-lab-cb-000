class Appointment
  attr_accessor :doctor, :date, :patient

  def initialize (date, doctor)
    @date = date
    @doctor = doctor
    until doctor.appointments.include?(self)
      doctor.appointments << self
    end
  end

end
