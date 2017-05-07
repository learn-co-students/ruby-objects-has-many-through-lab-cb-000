class Appointment
  attr_accessor :date, :doctor, :patient
  def initialize(date, doctor)
    @doctor = doctor
    @date = date
    #doctor.appointment=(self)
    doctor.add_appointment(self)
  end
end

# my_appointment = Appointment.new(dr_who, today)
# my_appointment.patient = "One Sick Dude"
