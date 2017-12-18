class Patient
  attr_accessor :name

  # initializes with a name
  def initialize(name)
    @name = name
    @appointments = []
  end

  # takes in an argument of an apppointment and adds that appointment to it's list of appointments and tells that appointment it belongs to the patient
  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  # has many doctors through appointments
  def doctors
  end
end
