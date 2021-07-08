class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = [] 
  end

  def add_appointment(appointment) 
    if appointment.is_a?(Appointment) && !@appointments.include?(appointment)
      appointment.patient = self
      @appointments << appointment
      @doctors << appointment.doctor
    end
  end

  def doctors
    @appointments.collect {|a| a.doctor}
  end
  
  def appointments
    @appointments
  end
  
end
