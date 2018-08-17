class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self,doctor, date)
    appointment.patient = self
    @appointments << appointment
    appointment
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.map {|a| a.doctor}
  end

end
