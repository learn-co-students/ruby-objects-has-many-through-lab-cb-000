class Patient
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self #=> assoc. this app. to this inst. of a patient.
  end

  def doctors
    @appointments.collect{|patient| patient.doctor} #=> assoc. this patient with
    # his all of his dr.
  end
end