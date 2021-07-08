class Doctor
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
    @patients = [] 
  end

  def add_appointment(appointment)
    if appointment.is_a?(Appointment) && !@appointments.include?(appointment) 
      appointment.doctor = self 
      @appointments << appointment
      @patients << appointment.patient
    end
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect  {|a| a.patient}   
  end
  
end
